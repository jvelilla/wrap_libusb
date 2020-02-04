note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class LIBUSB_CONTAINER_ID_DESCRIPTOR_STRUCT_API

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

	bdevcapabilitytype: INTEGER
			-- Access member `bDevCapabilityType`
		require
			exists: exists
		do
			Result := c_bdevcapabilitytype (item)
		ensure
			result_correct: Result = c_bdevcapabilitytype (item)
		end

	set_bdevcapabilitytype (a_value: INTEGER) 
			-- Change the value of member `bDevCapabilityType` to `a_value`.
		require
			exists: exists
		do
			set_c_bdevcapabilitytype (item, a_value)
		ensure
			bdevcapabilitytype_set: a_value = bdevcapabilitytype
		end

	breserved: INTEGER
			-- Access member `bReserved`
		require
			exists: exists
		do
			Result := c_breserved (item)
		ensure
			result_correct: Result = c_breserved (item)
		end

	set_breserved (a_value: INTEGER) 
			-- Change the value of member `bReserved` to `a_value`.
		require
			exists: exists
		do
			set_c_breserved (item, a_value)
		ensure
			breserved_set: a_value = breserved
		end

	containerid: POINTER
			-- Access member `ContainerID`
		require
			exists: exists
		do
			Result := c_containerid (item)
		ensure
			result_correct: Result = c_containerid (item)
		end

feature {NONE} -- Implementation wrapper for struct struct libusb_container_id_descriptor

	sizeof_external: INTEGER 
		external
			"C inline use <libusb.h>"
		alias
			"sizeof(struct libusb_container_id_descriptor)"
		end

	c_blength (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_container_id_descriptor*)$an_item)->bLength
			]"
		end

	set_c_blength (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_container_id_descriptor*)$an_item)->bLength =  (uint8_t)$a_value
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
				((struct libusb_container_id_descriptor*)$an_item)->bDescriptorType
			]"
		end

	set_c_bdescriptortype (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_container_id_descriptor*)$an_item)->bDescriptorType =  (uint8_t)$a_value
			]"
		ensure
			bdescriptortype_set: a_value = c_bdescriptortype (an_item)
		end

	c_bdevcapabilitytype (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_container_id_descriptor*)$an_item)->bDevCapabilityType
			]"
		end

	set_c_bdevcapabilitytype (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_container_id_descriptor*)$an_item)->bDevCapabilityType =  (uint8_t)$a_value
			]"
		ensure
			bdevcapabilitytype_set: a_value = c_bdevcapabilitytype (an_item)
		end

	c_breserved (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_container_id_descriptor*)$an_item)->bReserved
			]"
		end

	set_c_breserved (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_container_id_descriptor*)$an_item)->bReserved =  (uint8_t)$a_value
			]"
		ensure
			breserved_set: a_value = c_breserved (an_item)
		end

	c_containerid (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_container_id_descriptor*)$an_item)->ContainerID
			]"
		end

end
