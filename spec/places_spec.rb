require('rspec')
require('places')

describe(Places) do
  before() do
    Places.clear()
  end

  describe("#place") do
    it("allows you to enter name of place") do
      test_location = Places.new("Toledo")
      expect(test_location.place()).to eq("Toledo")
    end
  end

  describe(".all") do
    it("is empty at first") do
        expect(Places.all()).to eq([])
    end
  end

  describe("#save") do
    it("adds a place to the array of locations saved") do
      test_location = Places.new("Portland")
      test_location.save()
      expect(Places.all()).to eq([test_location])
    end
  end

  describe(".clear") do
    it("empties the array of places") do
      Places.new("Portland").save()
      Places.clear()
      expect(Places.all()).to eq ([])
    end
  end
end
