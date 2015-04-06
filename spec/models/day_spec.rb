require "rails_helper"

describe Day do
  let(:user) { double(User, id: 1, tasks: []) }

  subject { Day.new }

  it { should respond_to(:user)   }
  it { should respond_to(:tasks)  }
  it { should respond_to(:reload) }

  describe "#today?" do
    context "when #datetime is today" do
      subject { Day.today(user) }

      it { should be_today }
    end

    context "when #datetime is not today" do
      subject { Day.today(user) }
      before  { subject.datetime = 1.day.ago }

      it { should_not be_today }
    end
  end

  describe "#yesterday?" do
    context "when #datetime is yesterday" do
      subject { Day.yesterday(user) }

      it { should be_yesterday }
      it { should_not be_today }
    end

    context "when #datetime is not yesterday" do
      subject { Day.yesterday(user) }
      before  { subject.datetime = 3.days.ago }

      it { should_not be_yesterday }
      it { should_not be_today     }
    end
  end


  describe "class methods" do
    subject { described_class }

    it { should respond_to(:today)     }
    it { should respond_to(:yesterday) }
    it { should respond_to(:at)        }
  end
end
