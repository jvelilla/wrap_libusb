note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class LIBUSB_POLLFD_REMOVED_CB_DISPATCHER

inherit

	EWG_LIBUSB_CALLBACK_C_GLUE_CODE_FUNCTIONS_API
		export {NONE} all end
create
	make

feature -- Initialization

	make (a_routine: like routine) 
				-- Dispatcher initialization
		do
			routine := a_routine
			set_libusb_pollfd_removed_cb_entry (Current, $on_callback)
		end

feature --Access: Routine 

	routine: PROCEDURE [TUPLE [a_fd: INTEGER; a_user_data: POINTER]]  
			--Eiffel routine to be call on callback.

feature --Access: Dispatcher

	c_dispatcher: POINTER 
		do
			Result := get_libusb_pollfd_removed_cb_stub
		end

feature --Access: Callback

	on_callback (a_fd: INTEGER; a_user_data: POINTER)  
		do
			routine (a_fd, a_user_data)
		end

end
