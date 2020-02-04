note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class LIBUSB_CONFIG_DESCRIPTOR_STRUCT_API

inherit

	MEMORY_STRUCTURE

	
create

	make,
	make_by_pointer

feature -- Measurement

	structure_size: INTEGER 
		do
			Result := sizeof_external
		end

feature {ANY} -- Member Access

	blength: INTEGER
			-- Access member `bLength`
		require
			exists: exists
		do
			Result := c_blength (item)
		ensure
			result_correct: Result = c_blength (item)
		end

	set_blength (a_value: INTEGER) 
			-- Change the value of member `bLength` to `a_value`.
		require
			exists: exists
		do
			set_c_blength (item, a_value)
		ensure
			blength_set: a_value = blength
		end

	bdescriptortype: INTEGER
			-- Access member `bDescriptorType`
		require
			exists: exists
		do
			Result := c_bdescriptortype (item)
		ensure
			result_correct: Result = c_bdescriptortype (item)
		end

	set_bdescriptortype (a_value: INTEGER) 
			-- Change the value of member `bDescriptorType` to `a_value`.
		require
			exists: exists
		do
			set_c_bdescriptortype (item, a_value)
		ensure
			bdescriptortype_set: a_value = bdescriptortype
		end

	wtotallength: INTEGER
			-- Access member `wTotalLength`
		require
			exists: exists
		do
			Result := c_wtotallength (item)
		ensure
			result_correct: Result = c_wtotallength (item)
		end

	set_wtotallength (a_value: INTEGER) 
			-- Change the value of member `wTotalLength` to `a_value`.
		require
			exists: exists
		do
			set_c_wtotallength (item, a_value)
		ensure
			wtotallength_set: a_value = wtotallength
		end

	bnuminterfaces: INTEGER
			-- Access member `bNumInterfaces`
		require
			exists: exists
		do
			Result := c_bnuminterfaces (item)
		ensure
			result_correct: Result = c_bnuminterfaces (item)
		end

	set_bnuminterfaces (a_value: INTEGER) 
			-- Change the value of member `bNumInterfaces` to `a_value`.
		require
			exists: exists
		do
			set_c_bnuminterfaces (item, a_value)
		ensure
			bnuminterfaces_set: a_value = bnuminterfaces
		end

	bconfigurationvalue: INTEGER
			-- Access member `bConfigurationValue`
		require
			exists: exists
		do
			Result := c_bconfigurationvalue (item)
		ensure
			result_correct: Result = c_bconfigurationvalue (item)
		end

	set_bconfigurationvalue (a_value: INTEGER) 
			-- Change the value of member `bConfigurationValue` to `a_value`.
		require
			exists: exists
		do
			set_c_bconfigurationvalue (item, a_value)
		ensure
			bconfigurationvalue_set: a_value = bconfigurationvalue
		end

	iconfiguration: INTEGER
			-- Access member `iConfiguration`
		require
			exists: exists
		do
			Result := c_iconfiguration (item)
		ensure
			result_correct: Result = c_iconfiguration (item)
		end

	set_iconfiguration (a_value: INTEGER) 
			-- Change the value of member `iConfiguration` to `a_value`.
		require
			exists: exists
		do
			set_c_iconfiguration (item, a_value)
		ensure
			iconfiguration_set: a_value = iconfiguration
		end

	bmattributes: INTEGER
			-- Access member `bmAttributes`
		require
			exists: exists
		do
			Result := c_bmattributes (item)
		ensure
			result_correct: Result = c_bmattributes (item)
		end

	set_bmattributes (a_value: INTEGER) 
			-- Change the value of member `bmAttributes` to `a_value`.
		require
			exists: exists
		do
			set_c_bmattributes (item, a_value)
		ensure
			bmattributes_set: a_value = bmattributes
		end

	maxpower: INTEGER
			-- Access member `MaxPower`
		require
			exists: exists
		do
			Result := c_maxpower (item)
		ensure
			result_correct: Result = c_maxpower (item)
		end

	set_maxpower (a_value: INTEGER) 
			-- Change the value of member `MaxPower` to `a_value`.
		require
			exists: exists
		do
			set_c_maxpower (item, a_value)
		ensure
			maxpower_set: a_value = maxpower
		end

	interface: detachable LIBUSB_INTERFACE_STRUCT_API 
			-- Access member `interface`
		require
			exists: exists
		do
			if attached c_interface (item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer (l_ptr)
			end
		ensure
			result_void: Result = Void implies c_interface (item) = default_pointer 
			result_not_void: attached Result as l_result implies l_result.item = c_interface (item) 
		end

	set_interface (a_value: LIBUSB_INTERFACE_STRUCT_API) 
			-- Set member `interface`
		require
			a_value_not_void: a_value /= Void
			exists: exists
		do
			set_c_interface (item, a_value.item)
		ensure
			interface_set: attached interface as l_value implies l_value.item = a_value.item
		end

	extra:  detachable STRING
			-- Access member `extra`
		require
			exists: exists
		do
			if attached c_extra (item) as l_ptr then
				Result := (create {C_STRING}.make_by_pointer (l_ptr)).string
			end
		ensure
			result_void: Result = Void implies c_extra (item) = default_pointer
			result_not_void: attached Result as l_result implies l_result.same_string ((create {C_STRING}.make_by_pointer (item)).string)
		end

	set_extra (a_value: STRING) 
			-- Change the value of member `extra` to `a_value`.
		require
			exists: exists
		do
			set_c_extra (item, (create {C_STRING}.make (a_value)).item )
		end

	extra_length: INTEGER
			-- Access member `extra_length`
		require
			exists: exists
		do
			Result := c_extra_length (item)
		ensure
			result_correct: Result = c_extra_length (item)
		end

	set_extra_length (a_value: INTEGER) 
			-- Change the value of member `extra_length` to `a_value`.
		require
			exists: exists
		do
			set_c_extra_length (item, a_value)
		ensure
			extra_length_set: a_value = extra_length
		end

feature {NONE} -- Implementation wrapper for struct struct libusb_config_descriptor

	sizeof_external: INTEGER 
		external
			"C inline use <libusb.h>"
		alias
			"sizeof(struct libusb_config_descriptor)"
		end

	c_blength (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_config_descriptor*)$an_item)->bLength
			]"
		end

	set_c_blength (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_config_descriptor*)$an_item)->bLength =  (uint8_t)$a_value
			]"
		ensure
			blength_set: a_value = c_blength (an_item)
		end

	c_bdescriptortype (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_config_descriptor*)$an_item)->bDescriptorType
			]"
		end

	set_c_bdescriptortype (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_config_descriptor*)$an_item)->bDescriptorType =  (uint8_t)$a_value
			]"
		ensure
			bdescriptortype_set: a_value = c_bdescriptortype (an_item)
		end

	c_wtotallength (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_config_descriptor*)$an_item)->wTotalLength
			]"
		end

	set_c_wtotallength (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_config_descriptor*)$an_item)->wTotalLength =  (uint16_t)$a_value
			]"
		ensure
			wtotallength_set: a_value = c_wtotallength (an_item)
		end

	c_bnuminterfaces (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_config_descriptor*)$an_item)->bNumInterfaces
			]"
		end

	set_c_bnuminterfaces (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_config_descriptor*)$an_item)->bNumInterfaces =  (uint8_t)$a_value
			]"
		ensure
			bnuminterfaces_set: a_value = c_bnuminterfaces (an_item)
		end

	c_bconfigurationvalue (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_config_descriptor*)$an_item)->bConfigurationValue
			]"
		end

	set_c_bconfigurationvalue (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_config_descriptor*)$an_item)->bConfigurationValue =  (uint8_t)$a_value
			]"
		ensure
			bconfigurationvalue_set: a_value = c_bconfigurationvalue (an_item)
		end

	c_iconfiguration (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_config_descriptor*)$an_item)->iConfiguration
			]"
		end

	set_c_iconfiguration (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_config_descriptor*)$an_item)->iConfiguration =  (uint8_t)$a_value
			]"
		ensure
			iconfiguration_set: a_value = c_iconfiguration (an_item)
		end

	c_bmattributes (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_config_descriptor*)$an_item)->bmAttributes
			]"
		end

	set_c_bmattributes (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_config_descriptor*)$an_item)->bmAttributes =  (uint8_t)$a_value
			]"
		ensure
			bmattributes_set: a_value = c_bmattributes (an_item)
		end

	c_maxpower (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_config_descriptor*)$an_item)->MaxPower
			]"
		end

	set_c_maxpower (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_config_descriptor*)$an_item)->MaxPower =  (uint8_t)$a_value
			]"
		ensure
			maxpower_set: a_value = c_maxpower (an_item)
		end

	c_interface (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_config_descriptor*)$an_item)->interface
			]"
		end

	set_c_interface (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_config_descriptor*)$an_item)->interface =  (struct libusb_interface const*)$a_value
			]"
		ensure
			interface_set: a_value = c_interface (an_item)
		end

	c_extra (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_config_descriptor*)$an_item)->extra
			]"
		end

	set_c_extra (an_item: POINTER; a_value: POINTER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_config_descriptor*)$an_item)->extra =  (unsigned char const*)$a_value
			]"
		ensure
			extra_set: a_value = c_extra (an_item)
		end

	c_extra_length (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_config_descriptor*)$an_item)->extra_length
			]"
		end

	set_c_extra_length (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_config_descriptor*)$an_item)->extra_length =  (int)$a_value
			]"
		ensure
			extra_length_set: a_value = c_extra_length (an_item)
		end

end
