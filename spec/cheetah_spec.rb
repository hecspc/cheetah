require File.dirname(__FILE__) + '/spec_helper'

describe Cheetah do

  before(:each) do
    @eid    = :foo
    @email  = 'foo@buywithme.com'
    @params = {
      'eid'   => @eid,
      'email' => @email,
    }
  end

  context '.send_email' do
    it "should send a Message object to the messenger instance" do
      message = Message.new('/ebm/ebmtrigger1', @params)
      Message.should_receive(:new).with('/ebm/ebmtrigger1', @params).and_return(message)
      CM_MESSENGER.instance.should_receive(:send).with(message)
      Cheetah.send_email(@eid, @email)
    end

    it "should suppress emails that do not match the whitelist"
  end

  context '.mailing_list_update' do
    it "should blah"
  end

  context '.mailing_list_email_change' do
    it "should blah"
  end

  context '.send' do
    it "should blah"
  end
end

