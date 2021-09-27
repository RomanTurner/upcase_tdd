require 'app'
describe App do
  before do
    @app = App.new 
  end
  context "#say_hello" do
    it "returns a greeting" do
      expect(@app.say_hello).to eq('hello')
    end
  end
end