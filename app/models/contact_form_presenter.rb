class ContactFormPresenter < ApplicationPresenter

    def initialize(attributes={})
      @errors = ActiveModel::Errors.new(self)
      @name = attributes['name']
    end

    attr_accessor :name
    attr_reader   :errors

    def validate!
      errors.add(:name, :blank, message: "cannot be nil") if name.nil?
    end

    def to_h
      {name: name}
    end

    # The following methods are needed to be minimally implemented

    def read_attribute_for_validation(attr)
      send(attr)
    end

    def self.human_attribute_name(attr, options = {})
      attr
    end

    def self.lookup_ancestors
      [self]
    end

  end
