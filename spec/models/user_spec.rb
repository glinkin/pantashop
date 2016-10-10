require 'spec_helper'

describe User do

  before { @user = User.new(name: "Имя", phone: "+7 999 999 99 99") }

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
end