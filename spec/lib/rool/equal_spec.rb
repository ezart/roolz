describe "Rool::Equal" do
	describe "#process" do 
		before :each do
			@data = {foo: 5}
		end
		it "should return true if values are equal" do 
			expect(Rool::Equal.new(:foo, 5).process(@data)).to eq(true)
		end

		it "should return false if values are not equal ...sanity test" do
			expect(Rool::Equal.new(:foo, 4).process(@data)).to eq(false)
		end
	end
end