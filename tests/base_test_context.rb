#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose" file="base_test_context.rb">
#   Copyright (c) 2018 Aspose.Words for Cloud
# </copyright>
# <summary>
#   Permission is hereby granted, free of charge, to any person obtaining a copy
#  of this software and associated documentation files (the "Software"), to deal
#  in the Software without restriction, including without limitation the rights
#  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#  copies of the Software, and to permit persons to whom the Software is
#  furnished to do so, subject to the following conditions:
#
#  The above copyright notice and this permission notice shall be included in all
#  copies or substantial portions of the Software.
#
#  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
#  SOFTWARE.
# </summary>
# --------------------------------------------------------------------------------------------------------------------
#
module AsposeWordsCloud
  require "minitest/autorun"
  require "minitest/unit"
  require_relative '../lib/aspose_words_cloud'
  require 'aspose_storage_cloud'
  class BaseTestContext < Minitest::Test
    include AsposeStorageCloud
    include MiniTest::Assertions
    def setup
      file = File.read('Settings/servercreds.json')
      if file.length == 0
        raise ArgumentError, 'Put your credentials into servercreds.json'
      end
      creds = JSON.parse(file)
      AsposeWordsCloud.configure do |config|
        config.api_key['api_key'] = creds['AppKey']
        config.api_key['app_sid'] = creds['AppSid']
        config.host = creds['BaseUrl']
        AsposeStorageCloud.configure do |st_conf|
          st_conf.api_key['api_key'] = config.api_key['api_key']
          st_conf.api_key['app_sid'] = config.api_key['app_sid']
          st_conf.host = creds['BaseUrl']
          st_conf.scheme = config.scheme
        end
      end
      @words_api = WordsApi.new
      @storage_api = StorageApi.new
    end

    def local_test_folder
      'TestData/'
    end

    def remote_test_folder
      'Temp/SdkTests/ruby/'
    end

    def remote_test_out
      'Temp/SdkTests/ruby/TestOut/'
    end

    def local_common_folder
      'TestData/Common/'
    end
  end
end
