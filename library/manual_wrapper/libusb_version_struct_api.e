note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class LIBUSB_VERSION_STRUCT_API

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

	major: INTEGER
			-- Access member `major`
		require
			exists: exists
		do
			Result := c_major (item)
		ensure
			result_correct: Result = c_major (item)
		end


	minor: INTEGER
			-- Access member `minor`
		require
			exists: exists
		do
			Result := c_minor (item)
		ensure
			result_correct: Result = c_minor (item)
		end


	micro: INTEGER
			-- Access member `micro`
		require
			exists: exists
		do
			Result := c_micro (item)
		ensure
			result_correct: Result = c_micro (item)
		end


	nano: INTEGER
			-- Access member `nano`
		require
			exists: exists
		do
			Result := c_nano (item)
		ensure
			result_correct: Result = c_nano (item)
		end

	rc:  detachable STRING
			-- Access member `rc`
		require
			exists: exists
		do
			if attached c_rc (item) as l_ptr then
				Result := (create {C_STRING}.make_by_pointer (l_ptr)).string
			end
		ensure
			result_void: Result = Void implies c_rc (item) = default_pointer
			result_not_void: attached Result as l_result implies l_result.same_string ((create {C_STRING}.make_by_pointer (item)).string)
		end

	set_rc (a_value: STRING)
			-- Change the value of member `rc` to `a_value`.
		require
			exists: exists
		do
			set_c_rc (item, (create {C_STRING}.make (a_value)).item )
		end

	describe:  detachable STRING
			-- Access member `describe`
		require
			exists: exists
		do
			if attached c_describe (item) as l_ptr then
				Result := (create {C_STRING}.make_by_pointer (l_ptr)).string
			end
		ensure
			result_void: Result = Void implies c_describe (item) = default_pointer
			result_not_void: attached Result as l_result implies l_result.same_string ((create {C_STRING}.make_by_pointer (item)).string)
		end

	set_describe (a_value: STRING)
			-- Change the value of member `describe` to `a_value`.
		require
			exists: exists
		do
			set_c_describe (item, (create {C_STRING}.make (a_value)).item )
		end

feature {NONE} -- Implementation wrapper for struct struct libusb_version

	sizeof_external: INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"sizeof(struct libusb_version)"
		end

	c_major (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_version*)$an_item)->major
			]"
		end


	c_minor (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_version*)$an_item)->minor
			]"
		end


	c_micro (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_version*)$an_item)->micro
			]"
		end


	c_nano (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_version*)$an_item)->nano
			]"
		end

	c_rc (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_version*)$an_item)->rc
			]"
		end

	set_c_rc (an_item: POINTER; a_value: POINTER)
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_version*)$an_item)->rc =  (char const*)$a_value
			]"
		ensure
			rc_set: a_value = c_rc (an_item)
		end

	c_describe (an_item: POINTER): POINTER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_version*)$an_item)->describe
			]"
		end

	set_c_describe (an_item: POINTER; a_value: POINTER)
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_version*)$an_item)->describe =  (char const*)$a_value
			]"
		ensure
			describe_set: a_value = c_describe (an_item)
		end

end
