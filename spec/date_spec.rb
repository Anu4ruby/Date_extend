require 'spec_helper.rb'

describe Date do
  it "Date.year == #{Date.today.year}" do
    Date.year.should == Date.today.year
  end
  
  it "Date.month == #{Date.today.month}" do
    Date.month.should == Date.today.month
  end
  
  context 'first wednesday of month' do
    let(:data) { [ [2013, 1, 2], [2012, 1, 4] ] }
    it "works" do
      data.each do |date|
        year, month, day = date
        wednesday = Date.first_wednesday(month, year)
        wednesday.should == Date.new(year, month, day)
        wednesday.wday.should == 3
      end
    end
  end
  context 'second saturday sunday of month' do
    let(:data) { [ [2013, 2, 9], [2012, 3, 10]]}
    it 'works' do
      data.each do |date|
        year, month, day = date
        saturday = Date.second_saturday(month, year) 
        saturday.should == Date.new(year, month, day)
        saturday.wday.should == 6
      end
    end
  end   
  context 'last wednesday of month' do
    let(:data) { [[2013, 4, 24], [2012, 5, 30]]}
    it 'works' do
      data.each do |date|
        year, month, day = date
        wednesday = Date.last_wednesday(month, year)
        wednesday.should == Date.new(year, month, day)
        wednesday.wday.should == 3
      end
    end
  end
end
