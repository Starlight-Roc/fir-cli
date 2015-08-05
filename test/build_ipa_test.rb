# encoding: utf-8

class BuildIpaTest < Minitest::Test

  def test_build_ipa
    if ENV['TEST_BUILD']
      options = OpenStruct.new
      options.send("publish?=", true)

      assert FIR.build_ipa(default_ipa_project, options)
      assert FIR.build_apk(default_apk_project, options)
    end
  end
end
