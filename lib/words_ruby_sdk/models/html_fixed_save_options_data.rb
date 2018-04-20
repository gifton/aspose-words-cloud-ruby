
require 'date'

module WordsRubySdk
 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose" file="HtmlFixedSaveOptionsData.rb">
 #   Copyright (c) 2017 Aspose.Words for Cloud
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

  # container class for fixed html save options
  class HtmlFixedSaveOptionsData
    # Gets or sets a value determining how colors are rendered. { Normal | Grayscale}
    attr_accessor :color_mode

    # format of save
    attr_accessor :save_format

    # name of destination file
    attr_accessor :file_name

    # Gets or sets a value determining how DrawingML shapes are rendered. { Fallback | DrawingML }
    attr_accessor :dml_rendering_mode

    # Gets or sets a value determining how DrawingML effects are rendered. { Simplified | None | Fine }
    attr_accessor :dml_effects_rendering_mode

    # Controls zip output or not. Default value is false.
    attr_accessor :zip_output

    # Gets or sets value determining whether content of  is updated before saving.
    attr_accessor :update_sdt_content

    # Gets or sets a value determining if fields should be updated before saving the document to a fixed page format. Default value for this property is true
    attr_accessor :update_fields

    # Determines the quality of the JPEG images inside PDF document.
    attr_accessor :jpeg_quality

    # Allows to specify metafile rendering options.
    attr_accessor :metafile_rendering_options

    # Indicates the symbol set that is used to represent numbers while rendering to fixed page formats
    attr_accessor :numeral_format

    # Flag indicates whether it is required to optimize output of XPS.  If this flag is set redundant nested canvases and empty canvases are removed, also neighbor glyphs with the same formatting are concatenated.  Note: The accuracy of the content display may be affected if this property is set to true.  Default is false.
    attr_accessor :optimize_output

    # Determines number of pages to render
    attr_accessor :page_count

    # Determines 0-based index of the first page to render
    attr_accessor :page_index

    # Specifies prefix which is added to all class names in style.css file. Default value is \"aw\".
    attr_accessor :css_class_names_prefix

    # Encoding.
    attr_accessor :encoding

    # Specifies whether the CSS (Cascading Style Sheet) should be embedded into Html document.
    attr_accessor :export_embedded_css

    # Specifies whether fonts should be embedded into Html document in Base64 format.
    attr_accessor :export_embedded_fonts

    # Specifies whether images should be embedded into Html document in Base64 format.
    attr_accessor :export_embedded_images

    # Gets or sets indication of whether form fields are exported as interactive items (as 'input' tag) rather than converted to text or graphics.
    attr_accessor :export_form_fields

    # Specifies export format of fonts
    attr_accessor :font_format

    # Specifies the horizontal alignment of pages in an HTML document. Default value is HtmlFixedHorizontalPageAlignment.Center.
    attr_accessor :page_horizontal_alignment

    # Specifies the margins around pages in an HTML document. The margins value is measured in points and should be equal to or greater than 0. Default value is 10 points.
    attr_accessor :page_margins

    # Specifies the physical folder where resources are saved when exporting a document
    attr_accessor :resources_folder

    # Specifies the name of the folder used to construct resource URIs
    attr_accessor :resources_folder_alias

    # Specifies whether border around pages should be shown.
    attr_accessor :show_page_border


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'color_mode' => :'ColorMode',
        :'save_format' => :'SaveFormat',
        :'file_name' => :'FileName',
        :'dml_rendering_mode' => :'DmlRenderingMode',
        :'dml_effects_rendering_mode' => :'DmlEffectsRenderingMode',
        :'zip_output' => :'ZipOutput',
        :'update_sdt_content' => :'UpdateSdtContent',
        :'update_fields' => :'UpdateFields',
        :'jpeg_quality' => :'JpegQuality',
        :'metafile_rendering_options' => :'MetafileRenderingOptions',
        :'numeral_format' => :'NumeralFormat',
        :'optimize_output' => :'OptimizeOutput',
        :'page_count' => :'PageCount',
        :'page_index' => :'PageIndex',
        :'css_class_names_prefix' => :'CssClassNamesPrefix',
        :'encoding' => :'Encoding',
        :'export_embedded_css' => :'ExportEmbeddedCss',
        :'export_embedded_fonts' => :'ExportEmbeddedFonts',
        :'export_embedded_images' => :'ExportEmbeddedImages',
        :'export_form_fields' => :'ExportFormFields',
        :'font_format' => :'FontFormat',
        :'page_horizontal_alignment' => :'PageHorizontalAlignment',
        :'page_margins' => :'PageMargins',
        :'resources_folder' => :'ResourcesFolder',
        :'resources_folder_alias' => :'ResourcesFolderAlias',
        :'show_page_border' => :'ShowPageBorder'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'color_mode' => :'String',
        :'save_format' => :'String',
        :'file_name' => :'String',
        :'dml_rendering_mode' => :'String',
        :'dml_effects_rendering_mode' => :'String',
        :'zip_output' => :'BOOLEAN',
        :'update_sdt_content' => :'BOOLEAN',
        :'update_fields' => :'BOOLEAN',
        :'jpeg_quality' => :'Integer',
        :'metafile_rendering_options' => :'MetafileRenderingOptionsData',
        :'numeral_format' => :'String',
        :'optimize_output' => :'BOOLEAN',
        :'page_count' => :'Integer',
        :'page_index' => :'Integer',
        :'css_class_names_prefix' => :'String',
        :'encoding' => :'String',
        :'export_embedded_css' => :'BOOLEAN',
        :'export_embedded_fonts' => :'BOOLEAN',
        :'export_embedded_images' => :'BOOLEAN',
        :'export_form_fields' => :'BOOLEAN',
        :'font_format' => :'String',
        :'page_horizontal_alignment' => :'String',
        :'page_margins' => :'Float',
        :'resources_folder' => :'String',
        :'resources_folder_alias' => :'String',
        :'show_page_border' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'ColorMode')
        self.color_mode = attributes[:'ColorMode']
      end

      if attributes.has_key?(:'SaveFormat')
        self.save_format = attributes[:'SaveFormat']
      end

      if attributes.has_key?(:'FileName')
        self.file_name = attributes[:'FileName']
      end

      if attributes.has_key?(:'DmlRenderingMode')
        self.dml_rendering_mode = attributes[:'DmlRenderingMode']
      end

      if attributes.has_key?(:'DmlEffectsRenderingMode')
        self.dml_effects_rendering_mode = attributes[:'DmlEffectsRenderingMode']
      end

      if attributes.has_key?(:'ZipOutput')
        self.zip_output = attributes[:'ZipOutput']
      end

      if attributes.has_key?(:'UpdateSdtContent')
        self.update_sdt_content = attributes[:'UpdateSdtContent']
      end

      if attributes.has_key?(:'UpdateFields')
        self.update_fields = attributes[:'UpdateFields']
      end

      if attributes.has_key?(:'JpegQuality')
        self.jpeg_quality = attributes[:'JpegQuality']
      end

      if attributes.has_key?(:'MetafileRenderingOptions')
        self.metafile_rendering_options = attributes[:'MetafileRenderingOptions']
      end

      if attributes.has_key?(:'NumeralFormat')
        self.numeral_format = attributes[:'NumeralFormat']
      end

      if attributes.has_key?(:'OptimizeOutput')
        self.optimize_output = attributes[:'OptimizeOutput']
      end

      if attributes.has_key?(:'PageCount')
        self.page_count = attributes[:'PageCount']
      end

      if attributes.has_key?(:'PageIndex')
        self.page_index = attributes[:'PageIndex']
      end

      if attributes.has_key?(:'CssClassNamesPrefix')
        self.css_class_names_prefix = attributes[:'CssClassNamesPrefix']
      end

      if attributes.has_key?(:'Encoding')
        self.encoding = attributes[:'Encoding']
      end

      if attributes.has_key?(:'ExportEmbeddedCss')
        self.export_embedded_css = attributes[:'ExportEmbeddedCss']
      end

      if attributes.has_key?(:'ExportEmbeddedFonts')
        self.export_embedded_fonts = attributes[:'ExportEmbeddedFonts']
      end

      if attributes.has_key?(:'ExportEmbeddedImages')
        self.export_embedded_images = attributes[:'ExportEmbeddedImages']
      end

      if attributes.has_key?(:'ExportFormFields')
        self.export_form_fields = attributes[:'ExportFormFields']
      end

      if attributes.has_key?(:'FontFormat')
        self.font_format = attributes[:'FontFormat']
      end

      if attributes.has_key?(:'PageHorizontalAlignment')
        self.page_horizontal_alignment = attributes[:'PageHorizontalAlignment']
      end

      if attributes.has_key?(:'PageMargins')
        self.page_margins = attributes[:'PageMargins']
      end

      if attributes.has_key?(:'ResourcesFolder')
        self.resources_folder = attributes[:'ResourcesFolder']
      end

      if attributes.has_key?(:'ResourcesFolderAlias')
        self.resources_folder_alias = attributes[:'ResourcesFolderAlias']
      end

      if attributes.has_key?(:'ShowPageBorder')
        self.show_page_border = attributes[:'ShowPageBorder']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          color_mode == o.color_mode &&
          save_format == o.save_format &&
          file_name == o.file_name &&
          dml_rendering_mode == o.dml_rendering_mode &&
          dml_effects_rendering_mode == o.dml_effects_rendering_mode &&
          zip_output == o.zip_output &&
          update_sdt_content == o.update_sdt_content &&
          update_fields == o.update_fields &&
          jpeg_quality == o.jpeg_quality &&
          metafile_rendering_options == o.metafile_rendering_options &&
          numeral_format == o.numeral_format &&
          optimize_output == o.optimize_output &&
          page_count == o.page_count &&
          page_index == o.page_index &&
          css_class_names_prefix == o.css_class_names_prefix &&
          encoding == o.encoding &&
          export_embedded_css == o.export_embedded_css &&
          export_embedded_fonts == o.export_embedded_fonts &&
          export_embedded_images == o.export_embedded_images &&
          export_form_fields == o.export_form_fields &&
          font_format == o.font_format &&
          page_horizontal_alignment == o.page_horizontal_alignment &&
          page_margins == o.page_margins &&
          resources_folder == o.resources_folder &&
          resources_folder_alias == o.resources_folder_alias &&
          show_page_border == o.show_page_border
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [color_mode, save_format, file_name, dml_rendering_mode, dml_effects_rendering_mode, zip_output, update_sdt_content, update_fields, jpeg_quality, metafile_rendering_options, numeral_format, optimize_output, page_count, page_index, css_class_names_prefix, encoding, export_embedded_css, export_embedded_fonts, export_embedded_images, export_form_fields, font_format, page_horizontal_alignment, page_margins, resources_folder, resources_folder_alias, show_page_border].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        Time.at(/\d/.match(value)[0].to_f).to_datetime
      when :Date
        Time.at(/\d/.match(value)[0].to_f).to_date
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = WordsRubySdk.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
