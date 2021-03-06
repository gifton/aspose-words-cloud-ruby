 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose" file="PutExecuteTemplateOnlineRequest.rb">
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

  #
  # Request model for put_execute_template_online operation.
  #
  class PutExecuteTemplateOnlineRequest

        # File with template
        attr_accessor :template
        # File with mailmerge data
        attr_accessor :data
        # Clean up options.
        attr_accessor :cleanup
        # Gets or sets a value indicating whether paragraph with TableStart or              TableEnd field should be fully included into mail merge region or particular range between TableStart and TableEnd fields.              The default value is true.
        attr_accessor :use_whole_paragraph_as_region
        # Merge with regions or not. True by default
        attr_accessor :with_regions
        # This file name will be used when resulting document has dynamic field for document file name {filename}.  If it is not setted, \"template\" will be used instead.  Note: if withRegions == true executeTemplate updates fields only inside regions
        attr_accessor :document_file_name
	
        #
        # Initializes a new instance.
        # @param template File with template
        # @param data File with mailmerge data
        # @param cleanup Clean up options.
        # @param use_whole_paragraph_as_region Gets or sets a value indicating whether paragraph with TableStart or              TableEnd field should be fully included into mail merge region or particular range between TableStart and TableEnd fields.              The default value is true.
        # @param with_regions Merge with regions or not. True by default
        # @param document_file_name This file name will be used when resulting document has dynamic field for document file name {filename}.  If it is not setted, \"template\" will be used instead.  Note: if withRegions == true executeTemplate updates fields only inside regions
        def initialize(template, data, cleanup = nil, use_whole_paragraph_as_region = nil, with_regions = nil, document_file_name = nil)
           self.template = template
           self.data = data
           self.cleanup = cleanup
           self.use_whole_paragraph_as_region = use_whole_paragraph_as_region
           self.with_regions = with_regions
           self.document_file_name = document_file_name
        end
  end
end
