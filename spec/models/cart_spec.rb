require 'rails_helper'

RSpec.describe Cart, type: :model do
  fixtures :all
  let(:product) { products(:cake) }

  describe "when no line items" do
    it "has a total" do
      expect(subject.total).to eq(0)
    end

    it "has grouped line items" do
      expect(subject.grouped_line_items).to eq({})
    end
  end

  describe "when one line item" do
    before(:each) do # before is scoped to the closes describe block!
      subject.line_items.build(
        product: product,
        quantity: 1,
        total_sale_price_in_cents: product.unit_price_in_cents
      )
      subject.save #can use build plus save, or just create
    end

    it "has a total" do
      expect(subject.total).to eq(1000)
    end

    it "has grouped line items" do
      expect(subject.grouped_line_items).to eq(
        {
          product => [subject.line_items.first]
        }
      )
    end
  end

end
