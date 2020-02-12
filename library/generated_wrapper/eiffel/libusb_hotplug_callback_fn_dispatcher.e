note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class LIBUSB_HOTPLUG_CALLBACK_FN_DISPATCHER

inherit

	EWG_LIBUSB_CALLBACK_C_GLUE_CODE_FUNCTIONS_API
		export {NONE} all end
	DISPOSABLE
create
	make

feature -- Initialization

	make
				-- Dispatcher initialization
		do
			routine_1 := agent default_routine
			routine_2 := agent default_routine
			routine_3 := agent default_routine
			routine_4 := agent default_routine
			routine_5 := agent default_routine
			set_libusb_hotplug_callback_fn_object ($Current)
		end

feature --Access: Routine 

	routine_1: FUNCTION [TUPLE [a_ctx: POINTER; a_device: POINTER; a_event: INTEGER; a_user_data: POINTER], INTEGER] 
			--Eiffel routine to be call on callback.
	routine_2: FUNCTION [TUPLE [a_ctx: POINTER; a_device: POINTER; a_event: INTEGER; a_user_data: POINTER], INTEGER] 
			--Eiffel routine to be call on callback.
	routine_3: FUNCTION [TUPLE [a_ctx: POINTER; a_device: POINTER; a_event: INTEGER; a_user_data: POINTER], INTEGER] 
			--Eiffel routine to be call on callback.
	routine_4: FUNCTION [TUPLE [a_ctx: POINTER; a_device: POINTER; a_event: INTEGER; a_user_data: POINTER], INTEGER] 
			--Eiffel routine to be call on callback.
	routine_5: FUNCTION [TUPLE [a_ctx: POINTER; a_device: POINTER; a_event: INTEGER; a_user_data: POINTER], INTEGER] 
			--Eiffel routine to be call on callback.

feature --Access: Dispatcher


	c_dispatcher_1: POINTER
		do
			Result := get_libusb_hotplug_callback_fn_stub_1
		end

	c_dispatcher_2: POINTER
		do
			Result := get_libusb_hotplug_callback_fn_stub_2
		end

	c_dispatcher_3: POINTER
		do
			Result := get_libusb_hotplug_callback_fn_stub_3
		end

	c_dispatcher_4: POINTER
		do
			Result := get_libusb_hotplug_callback_fn_stub_4
		end

	c_dispatcher_5: POINTER
		do
			Result := get_libusb_hotplug_callback_fn_stub_5
		end

feature --Access: Callback

	on_callback_1 (a_ctx: POINTER; a_device: POINTER; a_event: INTEGER; a_user_data: POINTER): INTEGER  
		do
			Result := routine_1 (a_ctx, a_device, a_event, a_user_data)
		end

	on_callback_2 (a_ctx: POINTER; a_device: POINTER; a_event: INTEGER; a_user_data: POINTER): INTEGER  
		do
			Result := routine_2 (a_ctx, a_device, a_event, a_user_data)
		end

	on_callback_3 (a_ctx: POINTER; a_device: POINTER; a_event: INTEGER; a_user_data: POINTER): INTEGER  
		do
			Result := routine_3 (a_ctx, a_device, a_event, a_user_data)
		end

	on_callback_4 (a_ctx: POINTER; a_device: POINTER; a_event: INTEGER; a_user_data: POINTER): INTEGER  
		do
			Result := routine_4 (a_ctx, a_device, a_event, a_user_data)
		end

	on_callback_5 (a_ctx: POINTER; a_device: POINTER; a_event: INTEGER; a_user_data: POINTER): INTEGER  
		do
			Result := routine_5 (a_ctx, a_device, a_event, a_user_data)
		end


feature --Register: Callbacks

	register_callback_1 (a_routine: like routine_1)
		do
			routine_1 := a_routine
			set_libusb_hotplug_callback_fn_entry_1 ($on_callback_1)
		end

	register_callback_2 (a_routine: like routine_1)
		do
			routine_2 := a_routine
			set_libusb_hotplug_callback_fn_entry_2 ($on_callback_2)
		end

	register_callback_3 (a_routine: like routine_1)
		do
			routine_3 := a_routine
			set_libusb_hotplug_callback_fn_entry_3 ($on_callback_3)
		end

	register_callback_4 (a_routine: like routine_1)
		do
			routine_4 := a_routine
			set_libusb_hotplug_callback_fn_entry_4 ($on_callback_4)
		end

	register_callback_5 (a_routine: like routine_1)
		do
			routine_5 := a_routine
			set_libusb_hotplug_callback_fn_entry_5 ($on_callback_5)
		end


feature --Access: Default routine

	default_routine (a_ctx: POINTER; a_device: POINTER; a_event: INTEGER; a_user_data: POINTER): INTEGER  
		do
			 print ("Default routine")
		end


feature {NONE} -- Implementation

	dispose
			--Wean `Current'
		do
			release_libusb_hotplug_callback_fn_object
			set_libusb_hotplug_callback_fn_object (default_pointer)
		end


end
