# frozen_string_literal: true

RSpec.describe "inheritance safety" do # rubocop:disable RSpec/DescribeClass
  let(:parent_class) do
    Class.new do
      prepend MemoWise

      def parent_method
        "parent_method"
      end
      memo_wise :parent_method
    end
  end

  let(:child_class) do
    Class.new(parent_class) do
      def child_method
        "child_method"
      end
      memo_wise :child_method
    end
  end

  let(:child) { child_class.new }

  it "memoizes the parent and child methods separately" do
    expect(child.child_method).to eq("child_method")
    expect(child.parent_method).to eq("parent_method")
  end
end
