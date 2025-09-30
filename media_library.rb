require_relative "exportable_mixin"
require "time"


class MediaLibrary
  include Exportable
  attr_reader :items

  def initialize
    @items = []
  end

  def add_item(item)
    raise ArgumentError, "Must be a Media item" unless item.is_a?(Media)
    @items << item
  end

  def total_items
    @items.size
  end

  def count_books
    @items.count { |i| i.is_a?(Book) }
  end

  def count_audiobooks
    @items.count { |i| i.is_a?(Audiobook) }
  end

  def items_by_type(klass)
    @items.select { |i| i.is_a?(klass) }
  end

  def to_h
    {
      media: @items.map(&:to_h),
      export_version: "1.0.0",
      exported_at: Time.now.utc.iso8601
    }
  end
end
