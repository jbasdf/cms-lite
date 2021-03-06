module MuckControllerMacros

  def should_require_login(*args)
    args = Hash[*args]
    login_url = args.delete :login_url
    args.each do |action, verb|
      should "Require login for '#{action}' action" do
        send(verb, action)
        assert_redirected_to(login_url)
      end
    end
  end

  def should_require_role(role, redirect_url, *actions)
    actions = Hash[*actions]
    actions.each do |action, verb|
      should "require role for '#{action}' action" do
        user = Factory(:user)
        login_as(user)
        send(verb, action)
        assert_redirected_to(redirect_url)
        ensure_flash(/permission/i)
      end
    end
  end
  
  #from: http://blog.internautdesign.com/2008/9/11/more-on-custom-shoulda-macros-scoping-of-instance-variables
  def should_not_allow action, object, url= "/login", msg=nil
    msg ||= "a #{object.class.to_s.downcase}" 
    should "not be able to #{action} #{msg}" do
      object = eval(object, self.send(:binding), __FILE__, __LINE__)
      get action, :id => object.id
      assert_redirected_to url
    end
  end

  def should_allow action, object, msg=nil
    msg ||= "a #{object.class.to_s.downcase}" 
    should "be able to #{action} #{msg}" do
      object = eval(object, self.send(:binding), __FILE__, __LINE__)
      get action, :id => object.id
      assert_response :success
    end
  end

  # make sure the response body matches the text exactly
  def should_render_text(text)
    should "render text #{text}" do
      assert_equal text, @response.body
    end
  end

  # look for the given text in the response body
  def should_render_partial_text(text)
    should "contain text #{text}" do
      assert @response.body.include?(text), "Response did not contain the text '#{text}'"
    end
  end
  
end

ActionController::TestCase.extend(MuckControllerMacros)
