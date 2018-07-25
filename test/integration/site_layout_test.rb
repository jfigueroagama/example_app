require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  #Get the root path (Home page).
  #Verify that the right page template is rendered.
  #Check for the correct links to the Home, Help, About, and Contact pages

  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
  end

  #assert_select "div"	                        <div>foobar</div>
  #assert_select "div", "foobar"	              <div>foobar</div>
  #assert_select "div.nav"	                    <div class="nav">foobar</div>
  #assert_select "div#profile"	                <div id="profile">foobar</div>
  #assert_select "div[name=yo]"	                <div name="yo">hey</div>
  #assert_select "a[href=?]", ’/’, count: 1	    <a href="/">foo</a>
  #assert_select "a[href=?]", ’/’, text: "foo"	<a href="/">foo</a>

end
