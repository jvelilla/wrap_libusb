note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class LIBUSB_POLLFD_STRUCT_API

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

	fd: INTEGER
			-- Access member `fd`
		require
			exists: exists
		do
			Result := c_fd (item)
		ensure
			result_correct: Result = c_fd (item)
		end

	set_fd (a_value: INTEGER) 
			-- Change the value of member `fd` to `a_value`.
		require
			exists: exists
		do
			set_c_fd (item, a_value)
		ensure
			fd_set: a_value = fd
		end

	events: INTEGER
			-- Access member `events`
		require
			exists: exists
		do
			Result := c_events (item)
		ensure
			result_correct: Result = c_events (item)
		end

	set_events (a_value: INTEGER) 
			-- Change the value of member `events` to `a_value`.
		require
			exists: exists
		do
			set_c_events (item, a_value)
		ensure
			events_set: a_value = events
		end

feature {NONE} -- Implementation wrapper for struct struct libusb_pollfd

	sizeof_external: INTEGER 
		external
			"C inline use <libusb.h>"
		alias
			"sizeof(struct libusb_pollfd)"
		end

	c_fd (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_pollfd*)$an_item)->fd
			]"
		end

	set_c_fd (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_pollfd*)$an_item)->fd =  (int)$a_value
			]"
		ensure
			fd_set: a_value = c_fd (an_item)
		end

	c_events (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_pollfd*)$an_item)->events
			]"
		end

	set_c_events (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_pollfd*)$an_item)->events =  (short)$a_value
			]"
		ensure
			events_set: a_value = c_events (an_item)
		end

end
