note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"
-- functions wrapper
class LIBUSB_FUNCTIONS_API


feature -- Access

	libusb_init (ctx: LIBUSB_CONTEXT_STRUCT_API): INTEGER
		do
			Result := c_libusb_init (ctx.item)
		end

	libusb_exit (ctx: LIBUSB_CONTEXT_STRUCT_API)
		do
			c_libusb_exit (ctx.item)
		end

	libusb_set_debug (ctx: LIBUSB_CONTEXT_STRUCT_API; level: INTEGER)
		do
			c_libusb_set_debug (ctx.item, level)
		end

	libusb_set_log_cb (ctx: LIBUSB_CONTEXT_STRUCT_API; cb: POINTER; mode: INTEGER)
		do
			c_libusb_set_log_cb (ctx.item, cb, mode)
		end

	libusb_get_version: detachable LIBUSB_VERSION_STRUCT_API
		do
			if attached c_libusb_get_version as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	libusb_has_capability (capability: INTEGER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_has_capability ((uint32_t)$capability);
			]"
		end

	libusb_error_name (errcode: INTEGER): POINTER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_error_name ((int)$errcode);
			]"
		end

	libusb_setlocale (locale: POINTER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_setlocale ((char const*)$locale);
			]"
		end

	libusb_strerror (errcode: INTEGER): POINTER
		do
			Result := c_libusb_strerror (errcode)
		end

	libusb_get_device_list (ctx: LIBUSB_CONTEXT_STRUCT_API; list: LIBUSB_DEVICE_STRUCT_API): INTEGER
		do
			Result := c_libusb_get_device_list (ctx.item, list.item)
		end

	libusb_free_device_list (list: LIBUSB_DEVICE_STRUCT_API; unref_devices: INTEGER)
		do
			c_libusb_free_device_list (list.item, unref_devices)
		end

	libusb_ref_device (dev: LIBUSB_DEVICE_STRUCT_API): detachable LIBUSB_DEVICE_STRUCT_API
		do
			if attached c_libusb_ref_device (dev.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end
		end

	libusb_unref_device (dev: LIBUSB_DEVICE_STRUCT_API)
		do
			c_libusb_unref_device (dev.item)
		end

	libusb_get_configuration (dev: LIBUSB_DEVICE_HANDLE_STRUCT_API; config: POINTER): INTEGER
		do
			Result := c_libusb_get_configuration (dev.item, config)
		end

	libusb_get_device_descriptor (dev: LIBUSB_DEVICE_STRUCT_API; desc: LIBUSB_DEVICE_DESCRIPTOR_STRUCT_API): INTEGER
		do
			Result := c_libusb_get_device_descriptor (dev.item, desc.item)
		end

	libusb_get_active_config_descriptor (dev: LIBUSB_DEVICE_STRUCT_API; config: LIBUSB_CONFIG_DESCRIPTOR_STRUCT_API): INTEGER
		do
			Result := c_libusb_get_active_config_descriptor (dev.item, config.item)
		end

	libusb_get_config_descriptor (dev: LIBUSB_DEVICE_STRUCT_API; config_index: INTEGER; config: LIBUSB_CONFIG_DESCRIPTOR_STRUCT_API): INTEGER
		do
			Result := c_libusb_get_config_descriptor (dev.item, config_index, config.item)
		end

	libusb_get_config_descriptor_by_value (dev: LIBUSB_DEVICE_STRUCT_API; bconfigurationvalue: INTEGER; config: LIBUSB_CONFIG_DESCRIPTOR_STRUCT_API): INTEGER
		do
			Result := c_libusb_get_config_descriptor_by_value (dev.item, bconfigurationvalue, config.item)
		end

	libusb_free_config_descriptor (config: LIBUSB_CONFIG_DESCRIPTOR_STRUCT_API)
		do
			c_libusb_free_config_descriptor (config.item)
		end

	libusb_get_ss_endpoint_companion_descriptor (ctx: LIBUSB_CONTEXT_STRUCT_API; endpoint: LIBUSB_ENDPOINT_DESCRIPTOR_STRUCT_API; ep_comp: LIBUSB_SS_ENDPOINT_COMPANION_DESCRIPTOR_STRUCT_API): INTEGER
		do
			Result := c_libusb_get_ss_endpoint_companion_descriptor (ctx.item, endpoint.item, ep_comp.item)
		end

	libusb_free_ss_endpoint_companion_descriptor (ep_comp: LIBUSB_SS_ENDPOINT_COMPANION_DESCRIPTOR_STRUCT_API)
		do
			c_libusb_free_ss_endpoint_companion_descriptor (ep_comp.item)
		end

	libusb_get_bos_descriptor (dev_handle: LIBUSB_DEVICE_HANDLE_STRUCT_API; bos: LIBUSB_BOS_DESCRIPTOR_STRUCT_API): INTEGER
		do
			Result := c_libusb_get_bos_descriptor (dev_handle.item, bos.item)
		end

	libusb_free_bos_descriptor (bos: LIBUSB_BOS_DESCRIPTOR_STRUCT_API)
		do
			c_libusb_free_bos_descriptor (bos.item)
		end

	libusb_get_usb_2_0_extension_descriptor (ctx: LIBUSB_CONTEXT_STRUCT_API; dev_cap: LIBUSB_BOS_DEV_CAPABILITY_DESCRIPTOR_STRUCT_API; usb_2_0_extension: LIBUSB_USB_2_0_EXTENSION_DESCRIPTOR_STRUCT_API): INTEGER
		do
			Result := c_libusb_get_usb_2_0_extension_descriptor (ctx.item, dev_cap.item, usb_2_0_extension.item)
		end

	libusb_free_usb_2_0_extension_descriptor (usb_2_0_extension: LIBUSB_USB_2_0_EXTENSION_DESCRIPTOR_STRUCT_API)
		do
			c_libusb_free_usb_2_0_extension_descriptor (usb_2_0_extension.item)
		end

	libusb_get_ss_usb_device_capability_descriptor (ctx: LIBUSB_CONTEXT_STRUCT_API; dev_cap: LIBUSB_BOS_DEV_CAPABILITY_DESCRIPTOR_STRUCT_API; ss_usb_device_cap: LIBUSB_SS_USB_DEVICE_CAPABILITY_DESCRIPTOR_STRUCT_API): INTEGER
		do
			Result := c_libusb_get_ss_usb_device_capability_descriptor (ctx.item, dev_cap.item, ss_usb_device_cap.item)
		end

	libusb_free_ss_usb_device_capability_descriptor (ss_usb_device_cap: LIBUSB_SS_USB_DEVICE_CAPABILITY_DESCRIPTOR_STRUCT_API)
		do
			c_libusb_free_ss_usb_device_capability_descriptor (ss_usb_device_cap.item)
		end

	libusb_get_container_id_descriptor (ctx: LIBUSB_CONTEXT_STRUCT_API; dev_cap: LIBUSB_BOS_DEV_CAPABILITY_DESCRIPTOR_STRUCT_API; container_id: LIBUSB_CONTAINER_ID_DESCRIPTOR_STRUCT_API): INTEGER
		do
			Result := c_libusb_get_container_id_descriptor (ctx.item, dev_cap.item, container_id.item)
		end

	libusb_free_container_id_descriptor (container_id: LIBUSB_CONTAINER_ID_DESCRIPTOR_STRUCT_API)
		do
			c_libusb_free_container_id_descriptor (container_id.item)
		end

	libusb_get_bus_number (dev: LIBUSB_DEVICE_STRUCT_API): INTEGER
		do
			Result := c_libusb_get_bus_number (dev.item)
		end

	libusb_get_port_number (dev: LIBUSB_DEVICE_STRUCT_API): INTEGER
		do
			Result := c_libusb_get_port_number (dev.item)
		end

	libusb_get_port_numbers (dev: LIBUSB_DEVICE_STRUCT_API; port_numbers: STRING; port_numbers_len: INTEGER): INTEGER
		local
			port_numbers_c_string: C_STRING
		do
			create port_numbers_c_string.make (port_numbers)
			Result := c_libusb_get_port_numbers (dev.item, port_numbers_c_string.item, port_numbers_len)
		end

	libusb_get_port_path (ctx: LIBUSB_CONTEXT_STRUCT_API; dev: LIBUSB_DEVICE_STRUCT_API; path: STRING; path_length: INTEGER): INTEGER
		local
			path_c_string: C_STRING
		do
			create path_c_string.make (path)
			Result := c_libusb_get_port_path (ctx.item, dev.item, path_c_string.item, path_length)
		end

	libusb_get_parent (dev: LIBUSB_DEVICE_STRUCT_API): detachable LIBUSB_DEVICE_STRUCT_API
		do
			if attached c_libusb_get_parent (dev.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	libusb_get_device_address (dev: LIBUSB_DEVICE_STRUCT_API): INTEGER
		do
			Result := c_libusb_get_device_address (dev.item)
		end

	libusb_get_device_speed (dev: LIBUSB_DEVICE_STRUCT_API): INTEGER
		do
			Result := c_libusb_get_device_speed (dev.item)
		end

	libusb_get_max_packet_size (dev: LIBUSB_DEVICE_STRUCT_API; endpoint: INTEGER): INTEGER
		do
			Result := c_libusb_get_max_packet_size (dev.item, endpoint)
		end

	libusb_get_max_iso_packet_size (dev: LIBUSB_DEVICE_STRUCT_API; endpoint: INTEGER): INTEGER
		do
			Result := c_libusb_get_max_iso_packet_size (dev.item, endpoint)
		end

	libusb_wrap_sys_device (ctx: LIBUSB_CONTEXT_STRUCT_API; sys_dev: INTEGER; dev_handle: LIBUSB_DEVICE_HANDLE_STRUCT_API): INTEGER
		do
			Result := c_libusb_wrap_sys_device (ctx.item, sys_dev, dev_handle.item)
		end

	libusb_open (dev: LIBUSB_DEVICE_STRUCT_API; dev_handle: LIBUSB_DEVICE_HANDLE_STRUCT_API): INTEGER
		do
			Result := c_libusb_open (dev.item, dev_handle.item)
		end

	libusb_close (dev_handle: LIBUSB_DEVICE_HANDLE_STRUCT_API)
		do
			c_libusb_close (dev_handle.item)
		end

	libusb_get_device (dev_handle: LIBUSB_DEVICE_HANDLE_STRUCT_API): detachable LIBUSB_DEVICE_STRUCT_API
		do
			if attached c_libusb_get_device (dev_handle.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	libusb_set_configuration (dev_handle: LIBUSB_DEVICE_HANDLE_STRUCT_API; configuration: INTEGER): INTEGER
		do
			Result := c_libusb_set_configuration (dev_handle.item, configuration)
		end

	libusb_claim_interface (dev_handle: LIBUSB_DEVICE_HANDLE_STRUCT_API; interface_number: INTEGER): INTEGER
		do
			Result := c_libusb_claim_interface (dev_handle.item, interface_number)
		end

	libusb_release_interface (dev_handle: LIBUSB_DEVICE_HANDLE_STRUCT_API; interface_number: INTEGER): INTEGER
		do
			Result := c_libusb_release_interface (dev_handle.item, interface_number)
		end

	libusb_open_device_with_vid_pid (ctx: LIBUSB_CONTEXT_STRUCT_API; vendor_id: INTEGER; product_id: INTEGER): detachable LIBUSB_DEVICE_HANDLE_STRUCT_API
		do
			if attached c_libusb_open_device_with_vid_pid (ctx.item, vendor_id, product_id) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	libusb_set_interface_alt_setting (dev_handle: LIBUSB_DEVICE_HANDLE_STRUCT_API; interface_number: INTEGER; alternate_setting: INTEGER): INTEGER
		do
			Result := c_libusb_set_interface_alt_setting (dev_handle.item, interface_number, alternate_setting)
		end

	libusb_clear_halt (dev_handle: LIBUSB_DEVICE_HANDLE_STRUCT_API; endpoint: INTEGER): INTEGER
		do
			Result := c_libusb_clear_halt (dev_handle.item, endpoint)
		end

	libusb_reset_device (dev_handle: LIBUSB_DEVICE_HANDLE_STRUCT_API): INTEGER
		do
			Result := c_libusb_reset_device (dev_handle.item)
		end

	libusb_alloc_streams (dev_handle: LIBUSB_DEVICE_HANDLE_STRUCT_API; num_streams: INTEGER; endpoints: STRING; num_endpoints: INTEGER): INTEGER
		local
			endpoints_c_string: C_STRING
		do
			create endpoints_c_string.make (endpoints)
			Result := c_libusb_alloc_streams (dev_handle.item, num_streams, endpoints_c_string.item, num_endpoints)
		end

	libusb_free_streams (dev_handle: LIBUSB_DEVICE_HANDLE_STRUCT_API; endpoints: STRING; num_endpoints: INTEGER): INTEGER
		local
			endpoints_c_string: C_STRING
		do
			create endpoints_c_string.make (endpoints)
			Result := c_libusb_free_streams (dev_handle.item, endpoints_c_string.item, num_endpoints)
		end

	libusb_dev_mem_alloc (dev_handle: LIBUSB_DEVICE_HANDLE_STRUCT_API; length: INTEGER): POINTER
		do
			Result := c_libusb_dev_mem_alloc (dev_handle.item, length)
		end

	libusb_dev_mem_free (dev_handle: LIBUSB_DEVICE_HANDLE_STRUCT_API; buffer: STRING; length: INTEGER): INTEGER
		local
			buffer_c_string: C_STRING
		do
			create buffer_c_string.make (buffer)
			Result := c_libusb_dev_mem_free (dev_handle.item, buffer_c_string.item, length)
		end

	libusb_kernel_driver_active (dev_handle: LIBUSB_DEVICE_HANDLE_STRUCT_API; interface_number: INTEGER): INTEGER
		do
			Result := c_libusb_kernel_driver_active (dev_handle.item, interface_number)
		end

	libusb_detach_kernel_driver (dev_handle: LIBUSB_DEVICE_HANDLE_STRUCT_API; interface_number: INTEGER): INTEGER
		do
			Result := c_libusb_detach_kernel_driver (dev_handle.item, interface_number)
		end

	libusb_attach_kernel_driver (dev_handle: LIBUSB_DEVICE_HANDLE_STRUCT_API; interface_number: INTEGER): INTEGER
		do
			Result := c_libusb_attach_kernel_driver (dev_handle.item, interface_number)
		end

	libusb_set_auto_detach_kernel_driver (dev_handle: LIBUSB_DEVICE_HANDLE_STRUCT_API; enable: INTEGER): INTEGER
		do
			Result := c_libusb_set_auto_detach_kernel_driver (dev_handle.item, enable)
		end

	libusb_alloc_transfer (iso_packets: INTEGER): POINTER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_alloc_transfer ((int)$iso_packets);
			]"
		end

	libusb_submit_transfer (transfer: LIBUSB_TRANSFER_STRUCT_API): INTEGER
		do
			Result := c_libusb_submit_transfer (transfer.item)
		end

	libusb_cancel_transfer (transfer: LIBUSB_TRANSFER_STRUCT_API): INTEGER
		do
			Result := c_libusb_cancel_transfer (transfer.item)
		end

	libusb_free_transfer (transfer: LIBUSB_TRANSFER_STRUCT_API)
		do
			c_libusb_free_transfer (transfer.item)
		end

	libusb_transfer_set_stream_id (transfer: LIBUSB_TRANSFER_STRUCT_API; stream_id: INTEGER)
		do
			c_libusb_transfer_set_stream_id (transfer.item, stream_id)
		end

	libusb_transfer_get_stream_id (transfer: LIBUSB_TRANSFER_STRUCT_API): INTEGER
		do
			Result := c_libusb_transfer_get_stream_id (transfer.item)
		end

	libusb_control_transfer (dev_handle: LIBUSB_DEVICE_HANDLE_STRUCT_API; request_type: INTEGER; brequest: INTEGER; wvalue: INTEGER; windex: INTEGER; data: STRING; wlength: INTEGER; timeout: INTEGER): INTEGER
		local
			data_c_string: C_STRING
		do
			create data_c_string.make (data)
			Result := c_libusb_control_transfer (dev_handle.item, request_type, brequest, wvalue, windex, data_c_string.item, wlength, timeout)
		end

	libusb_bulk_transfer (dev_handle: LIBUSB_DEVICE_HANDLE_STRUCT_API; endpoint: INTEGER; data: STRING; length: INTEGER; actual_length: POINTER; timeout: INTEGER): INTEGER
		local
			data_c_string: C_STRING
		do
			create data_c_string.make (data)
			Result := c_libusb_bulk_transfer (dev_handle.item, endpoint, data_c_string.item, length, actual_length, timeout)
		end

	libusb_interrupt_transfer (dev_handle: LIBUSB_DEVICE_HANDLE_STRUCT_API; endpoint: INTEGER; data: STRING; length: INTEGER; actual_length: POINTER; timeout: INTEGER): INTEGER
		local
			data_c_string: C_STRING
		do
			create data_c_string.make (data)
			Result := c_libusb_interrupt_transfer (dev_handle.item, endpoint, data_c_string.item, length, actual_length, timeout)
		end

	libusb_get_string_descriptor_ascii (dev_handle: LIBUSB_DEVICE_HANDLE_STRUCT_API; desc_index: INTEGER; data: STRING; length: INTEGER): INTEGER
		local
			data_c_string: C_STRING
		do
			create data_c_string.make (data)
			Result := c_libusb_get_string_descriptor_ascii (dev_handle.item, desc_index, data_c_string.item, length)
		end

	libusb_try_lock_events (ctx: LIBUSB_CONTEXT_STRUCT_API): INTEGER
		do
			Result := c_libusb_try_lock_events (ctx.item)
		end

	libusb_lock_events (ctx: LIBUSB_CONTEXT_STRUCT_API)
		do
			c_libusb_lock_events (ctx.item)
		end

	libusb_unlock_events (ctx: LIBUSB_CONTEXT_STRUCT_API)
		do
			c_libusb_unlock_events (ctx.item)
		end

	libusb_event_handling_ok (ctx: LIBUSB_CONTEXT_STRUCT_API): INTEGER
		do
			Result := c_libusb_event_handling_ok (ctx.item)
		end

	libusb_event_handler_active (ctx: LIBUSB_CONTEXT_STRUCT_API): INTEGER
		do
			Result := c_libusb_event_handler_active (ctx.item)
		end

	libusb_interrupt_event_handler (ctx: LIBUSB_CONTEXT_STRUCT_API)
		do
			c_libusb_interrupt_event_handler (ctx.item)
		end

	libusb_lock_event_waiters (ctx: LIBUSB_CONTEXT_STRUCT_API)
		do
			c_libusb_lock_event_waiters (ctx.item)
		end

	libusb_unlock_event_waiters (ctx: LIBUSB_CONTEXT_STRUCT_API)
		do
			c_libusb_unlock_event_waiters (ctx.item)
		end

	libusb_wait_for_event (ctx: LIBUSB_CONTEXT_STRUCT_API; tv: TIMEVAL_STRUCT_API): INTEGER
		do
			Result := c_libusb_wait_for_event (ctx.item, tv.item)
		end

	libusb_handle_events_timeout (ctx: LIBUSB_CONTEXT_STRUCT_API; tv: TIMEVAL_STRUCT_API): INTEGER
		do
			Result := c_libusb_handle_events_timeout (ctx.item, tv.item)
		end

	libusb_handle_events_timeout_completed (ctx: LIBUSB_CONTEXT_STRUCT_API; tv: TIMEVAL_STRUCT_API; completed: POINTER): INTEGER
		do
			Result := c_libusb_handle_events_timeout_completed (ctx.item, tv.item, completed)
		end

	libusb_handle_events (ctx: LIBUSB_CONTEXT_STRUCT_API): INTEGER
		do
			Result := c_libusb_handle_events (ctx.item)
		end

	libusb_handle_events_completed (ctx: LIBUSB_CONTEXT_STRUCT_API; completed: POINTER): INTEGER
		do
			Result := c_libusb_handle_events_completed (ctx.item, completed)
		end

	libusb_handle_events_locked (ctx: LIBUSB_CONTEXT_STRUCT_API; tv: TIMEVAL_STRUCT_API): INTEGER
		do
			Result := c_libusb_handle_events_locked (ctx.item, tv.item)
		end

	libusb_pollfds_handle_timeouts (ctx: LIBUSB_CONTEXT_STRUCT_API): INTEGER
		do
			Result := c_libusb_pollfds_handle_timeouts (ctx.item)
		end

	libusb_get_next_timeout (ctx: LIBUSB_CONTEXT_STRUCT_API; tv: TIMEVAL_STRUCT_API): INTEGER
		do
			Result := c_libusb_get_next_timeout (ctx.item, tv.item)
		end

	libusb_get_pollfds (ctx: LIBUSB_CONTEXT_STRUCT_API): detachable LIBUSB_POLLFD_STRUCT_API
		do
			if attached c_libusb_get_pollfds (ctx.item) as l_ptr and then not l_ptr.is_default_pointer then
				create Result.make_by_pointer ( l_ptr )
			end

		end

	libusb_free_pollfds (pollfds: LIBUSB_POLLFD_STRUCT_API)
		do
			c_libusb_free_pollfds (pollfds.item)
		end

	libusb_set_pollfd_notifiers (ctx: LIBUSB_CONTEXT_STRUCT_API; added_cb: POINTER; removed_cb: POINTER; user_data: POINTER)
		do
			c_libusb_set_pollfd_notifiers (ctx.item, added_cb, removed_cb, user_data)
		end

	libusb_hotplug_register_callback (ctx: LIBUSB_CONTEXT_STRUCT_API; events: INTEGER; flags: INTEGER; vendor_id: INTEGER; product_id: INTEGER; dev_class: INTEGER; cb_fn: POINTER; user_data: POINTER; callback_handle: POINTER): INTEGER
		do
			Result := c_libusb_hotplug_register_callback (ctx.item, events, flags, vendor_id, product_id, dev_class, cb_fn, user_data, callback_handle)
		end

	libusb_hotplug_deregister_callback (ctx: LIBUSB_CONTEXT_STRUCT_API; callback_handle: INTEGER)
		do
			c_libusb_hotplug_deregister_callback (ctx.item, callback_handle)
		end

	libusb_set_option (ctx: LIBUSB_CONTEXT_STRUCT_API; option: INTEGER): INTEGER
		do
			Result := c_libusb_set_option (ctx.item, option)
		end

feature -- Externals

	c_libusb_init (ctx: POINTER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_init ((libusb_context**)$ctx);
			]"
		end

	c_libusb_exit (ctx: POINTER)
		external
			"C inline use <libusb.h>"
		alias
			"[
				libusb_exit ((libusb_context*)$ctx);
			]"
		end

	c_libusb_set_debug (ctx: POINTER; level: INTEGER)
		external
			"C inline use <libusb.h>"
		alias
			"[
				libusb_set_debug ((libusb_context*)$ctx, (int)$level);
			]"
		end

	c_libusb_set_log_cb (ctx: POINTER; cb: POINTER; mode: INTEGER)
		external
			"C inline use <libusb.h>"
		alias
			"[
				libusb_set_log_cb ((libusb_context*)$ctx, (libusb_log_cb)$cb, (int)$mode);
			]"
		end

	c_libusb_get_version: POINTER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_get_version ();
			]"
		end

	c_libusb_strerror (errcode: INTEGER): POINTER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_strerror ((enum libusb_error)$errcode);
			]"
		end

	c_libusb_get_device_list (ctx: POINTER; list: POINTER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_get_device_list ((libusb_context*)$ctx, (libusb_device***)$list);
			]"
		end

	c_libusb_free_device_list (list: POINTER; unref_devices: INTEGER)
		external
			"C inline use <libusb.h>"
		alias
			"[
				libusb_free_device_list ((libusb_device**)$list, (int)$unref_devices);
			]"
		end

	c_libusb_ref_device (dev: POINTER): POINTER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_ref_device ((libusb_device*)$dev);
			]"
		end

	c_libusb_unref_device (dev: POINTER)
		external
			"C inline use <libusb.h>"
		alias
			"[
				libusb_unref_device ((libusb_device*)$dev);
			]"
		end

	c_libusb_get_configuration (dev: POINTER; config: POINTER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_get_configuration ((libusb_device_handle*)$dev, (int*)$config);
			]"
		end

	c_libusb_get_device_descriptor (dev: POINTER; desc: POINTER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_get_device_descriptor ((libusb_device*)$dev, (struct libusb_device_descriptor*)$desc);
			]"
		end

	c_libusb_get_active_config_descriptor (dev: POINTER; config: POINTER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_get_active_config_descriptor ((libusb_device*)$dev, (struct libusb_config_descriptor**)$config);
			]"
		end

	c_libusb_get_config_descriptor (dev: POINTER; config_index: INTEGER; config: POINTER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_get_config_descriptor ((libusb_device*)$dev, (uint8_t)$config_index, (struct libusb_config_descriptor**)$config);
			]"
		end

	c_libusb_get_config_descriptor_by_value (dev: POINTER; bconfigurationvalue: INTEGER; config: POINTER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_get_config_descriptor_by_value ((libusb_device*)$dev, (uint8_t)$bconfigurationvalue, (struct libusb_config_descriptor**)$config);
			]"
		end

	c_libusb_free_config_descriptor (config: POINTER)
		external
			"C inline use <libusb.h>"
		alias
			"[
				libusb_free_config_descriptor ((struct libusb_config_descriptor*)$config);
			]"
		end

	c_libusb_get_ss_endpoint_companion_descriptor (ctx: POINTER; endpoint: POINTER; ep_comp: POINTER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_get_ss_endpoint_companion_descriptor ((struct libusb_context*)$ctx, (struct libusb_endpoint_descriptor const*)$endpoint, (struct libusb_ss_endpoint_companion_descriptor**)$ep_comp);
			]"
		end

	c_libusb_free_ss_endpoint_companion_descriptor (ep_comp: POINTER)
		external
			"C inline use <libusb.h>"
		alias
			"[
				libusb_free_ss_endpoint_companion_descriptor ((struct libusb_ss_endpoint_companion_descriptor*)$ep_comp);
			]"
		end

	c_libusb_get_bos_descriptor (dev_handle: POINTER; bos: POINTER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_get_bos_descriptor ((libusb_device_handle*)$dev_handle, (struct libusb_bos_descriptor**)$bos);
			]"
		end

	c_libusb_free_bos_descriptor (bos: POINTER)
		external
			"C inline use <libusb.h>"
		alias
			"[
				libusb_free_bos_descriptor ((struct libusb_bos_descriptor*)$bos);
			]"
		end

	c_libusb_get_usb_2_0_extension_descriptor (ctx: POINTER; dev_cap: POINTER; usb_2_0_extension: POINTER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_get_usb_2_0_extension_descriptor ((struct libusb_context*)$ctx, (struct libusb_bos_dev_capability_descriptor*)$dev_cap, (struct libusb_usb_2_0_extension_descriptor**)$usb_2_0_extension);
			]"
		end

	c_libusb_free_usb_2_0_extension_descriptor (usb_2_0_extension: POINTER)
		external
			"C inline use <libusb.h>"
		alias
			"[
				libusb_free_usb_2_0_extension_descriptor ((struct libusb_usb_2_0_extension_descriptor*)$usb_2_0_extension);
			]"
		end

	c_libusb_get_ss_usb_device_capability_descriptor (ctx: POINTER; dev_cap: POINTER; ss_usb_device_cap: POINTER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_get_ss_usb_device_capability_descriptor ((struct libusb_context*)$ctx, (struct libusb_bos_dev_capability_descriptor*)$dev_cap, (struct libusb_ss_usb_device_capability_descriptor**)$ss_usb_device_cap);
			]"
		end

	c_libusb_free_ss_usb_device_capability_descriptor (ss_usb_device_cap: POINTER)
		external
			"C inline use <libusb.h>"
		alias
			"[
				libusb_free_ss_usb_device_capability_descriptor ((struct libusb_ss_usb_device_capability_descriptor*)$ss_usb_device_cap);
			]"
		end

	c_libusb_get_container_id_descriptor (ctx: POINTER; dev_cap: POINTER; container_id: POINTER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_get_container_id_descriptor ((struct libusb_context*)$ctx, (struct libusb_bos_dev_capability_descriptor*)$dev_cap, (struct libusb_container_id_descriptor**)$container_id);
			]"
		end

	c_libusb_free_container_id_descriptor (container_id: POINTER)
		external
			"C inline use <libusb.h>"
		alias
			"[
				libusb_free_container_id_descriptor ((struct libusb_container_id_descriptor*)$container_id);
			]"
		end

	c_libusb_get_bus_number (dev: POINTER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_get_bus_number ((libusb_device*)$dev);
			]"
		end

	c_libusb_get_port_number (dev: POINTER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_get_port_number ((libusb_device*)$dev);
			]"
		end

	c_libusb_get_port_numbers (dev: POINTER; port_numbers: POINTER; port_numbers_len: INTEGER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_get_port_numbers ((libusb_device*)$dev, (uint8_t*)$port_numbers, (int)$port_numbers_len);
			]"
		end

	c_libusb_get_port_path (ctx: POINTER; dev: POINTER; path: POINTER; path_length: INTEGER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_get_port_path ((libusb_context*)$ctx, (libusb_device*)$dev, (uint8_t*)$path, (uint8_t)$path_length);
			]"
		end

	c_libusb_get_parent (dev: POINTER): POINTER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_get_parent ((libusb_device*)$dev);
			]"
		end

	c_libusb_get_device_address (dev: POINTER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_get_device_address ((libusb_device*)$dev);
			]"
		end

	c_libusb_get_device_speed (dev: POINTER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_get_device_speed ((libusb_device*)$dev);
			]"
		end

	c_libusb_get_max_packet_size (dev: POINTER; endpoint: INTEGER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_get_max_packet_size ((libusb_device*)$dev, (unsigned char)$endpoint);
			]"
		end

	c_libusb_get_max_iso_packet_size (dev: POINTER; endpoint: INTEGER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_get_max_iso_packet_size ((libusb_device*)$dev, (unsigned char)$endpoint);
			]"
		end

	c_libusb_wrap_sys_device (ctx: POINTER; sys_dev: INTEGER; dev_handle: POINTER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_wrap_sys_device ((libusb_context*)$ctx, (intptr_t)$sys_dev, (libusb_device_handle**)$dev_handle);
			]"
		end

	c_libusb_open (dev: POINTER; dev_handle: POINTER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_open ((libusb_device*)$dev, (libusb_device_handle**)$dev_handle);
			]"
		end

	c_libusb_close (dev_handle: POINTER)
		external
			"C inline use <libusb.h>"
		alias
			"[
				libusb_close ((libusb_device_handle*)$dev_handle);
			]"
		end

	c_libusb_get_device (dev_handle: POINTER): POINTER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_get_device ((libusb_device_handle*)$dev_handle);
			]"
		end

	c_libusb_set_configuration (dev_handle: POINTER; configuration: INTEGER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_set_configuration ((libusb_device_handle*)$dev_handle, (int)$configuration);
			]"
		end

	c_libusb_claim_interface (dev_handle: POINTER; interface_number: INTEGER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_claim_interface ((libusb_device_handle*)$dev_handle, (int)$interface_number);
			]"
		end

	c_libusb_release_interface (dev_handle: POINTER; interface_number: INTEGER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_release_interface ((libusb_device_handle*)$dev_handle, (int)$interface_number);
			]"
		end

	c_libusb_open_device_with_vid_pid (ctx: POINTER; vendor_id: INTEGER; product_id: INTEGER): POINTER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_open_device_with_vid_pid ((libusb_context*)$ctx, (uint16_t)$vendor_id, (uint16_t)$product_id);
			]"
		end

	c_libusb_set_interface_alt_setting (dev_handle: POINTER; interface_number: INTEGER; alternate_setting: INTEGER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_set_interface_alt_setting ((libusb_device_handle*)$dev_handle, (int)$interface_number, (int)$alternate_setting);
			]"
		end

	c_libusb_clear_halt (dev_handle: POINTER; endpoint: INTEGER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_clear_halt ((libusb_device_handle*)$dev_handle, (unsigned char)$endpoint);
			]"
		end

	c_libusb_reset_device (dev_handle: POINTER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_reset_device ((libusb_device_handle*)$dev_handle);
			]"
		end

	c_libusb_alloc_streams (dev_handle: POINTER; num_streams: INTEGER; endpoints: POINTER; num_endpoints: INTEGER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_alloc_streams ((libusb_device_handle*)$dev_handle, (uint32_t)$num_streams, (unsigned char*)$endpoints, (int)$num_endpoints);
			]"
		end

	c_libusb_free_streams (dev_handle: POINTER; endpoints: POINTER; num_endpoints: INTEGER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_free_streams ((libusb_device_handle*)$dev_handle, (unsigned char*)$endpoints, (int)$num_endpoints);
			]"
		end

	c_libusb_dev_mem_alloc (dev_handle: POINTER; length: INTEGER): POINTER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_dev_mem_alloc ((libusb_device_handle*)$dev_handle, (size_t)$length);
			]"
		end

	c_libusb_dev_mem_free (dev_handle: POINTER; buffer: POINTER; length: INTEGER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_dev_mem_free ((libusb_device_handle*)$dev_handle, (unsigned char*)$buffer, (size_t)$length);
			]"
		end

	c_libusb_kernel_driver_active (dev_handle: POINTER; interface_number: INTEGER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_kernel_driver_active ((libusb_device_handle*)$dev_handle, (int)$interface_number);
			]"
		end

	c_libusb_detach_kernel_driver (dev_handle: POINTER; interface_number: INTEGER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_detach_kernel_driver ((libusb_device_handle*)$dev_handle, (int)$interface_number);
			]"
		end

	c_libusb_attach_kernel_driver (dev_handle: POINTER; interface_number: INTEGER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_attach_kernel_driver ((libusb_device_handle*)$dev_handle, (int)$interface_number);
			]"
		end

	c_libusb_set_auto_detach_kernel_driver (dev_handle: POINTER; enable: INTEGER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_set_auto_detach_kernel_driver ((libusb_device_handle*)$dev_handle, (int)$enable);
			]"
		end

	c_libusb_submit_transfer (transfer: POINTER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_submit_transfer ((struct libusb_transfer*)$transfer);
			]"
		end

	c_libusb_cancel_transfer (transfer: POINTER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_cancel_transfer ((struct libusb_transfer*)$transfer);
			]"
		end

	c_libusb_free_transfer (transfer: POINTER)
		external
			"C inline use <libusb.h>"
		alias
			"[
				libusb_free_transfer ((struct libusb_transfer*)$transfer);
			]"
		end

	c_libusb_transfer_set_stream_id (transfer: POINTER; stream_id: INTEGER)
		external
			"C inline use <libusb.h>"
		alias
			"[
				libusb_transfer_set_stream_id ((struct libusb_transfer*)$transfer, (uint32_t)$stream_id);
			]"
		end

	c_libusb_transfer_get_stream_id (transfer: POINTER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_transfer_get_stream_id ((struct libusb_transfer*)$transfer);
			]"
		end

	c_libusb_control_transfer (dev_handle: POINTER; request_type: INTEGER; brequest: INTEGER; wvalue: INTEGER; windex: INTEGER; data: POINTER; wlength: INTEGER; timeout: INTEGER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_control_transfer ((libusb_device_handle*)$dev_handle, (uint8_t)$request_type, (uint8_t)$brequest, (uint16_t)$wvalue, (uint16_t)$windex, (unsigned char*)$data, (uint16_t)$wlength, (unsigned int)$timeout);
			]"
		end

	c_libusb_bulk_transfer (dev_handle: POINTER; endpoint: INTEGER; data: POINTER; length: INTEGER; actual_length: POINTER; timeout: INTEGER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_bulk_transfer ((libusb_device_handle*)$dev_handle, (unsigned char)$endpoint, (unsigned char*)$data, (int)$length, (int*)$actual_length, (unsigned int)$timeout);
			]"
		end

	c_libusb_interrupt_transfer (dev_handle: POINTER; endpoint: INTEGER; data: POINTER; length: INTEGER; actual_length: POINTER; timeout: INTEGER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_interrupt_transfer ((libusb_device_handle*)$dev_handle, (unsigned char)$endpoint, (unsigned char*)$data, (int)$length, (int*)$actual_length, (unsigned int)$timeout);
			]"
		end

	c_libusb_get_string_descriptor_ascii (dev_handle: POINTER; desc_index: INTEGER; data: POINTER; length: INTEGER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_get_string_descriptor_ascii ((libusb_device_handle*)$dev_handle, (uint8_t)$desc_index, (unsigned char*)$data, (int)$length);
			]"
		end

	c_libusb_try_lock_events (ctx: POINTER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_try_lock_events ((libusb_context*)$ctx);
			]"
		end

	c_libusb_lock_events (ctx: POINTER)
		external
			"C inline use <libusb.h>"
		alias
			"[
				libusb_lock_events ((libusb_context*)$ctx);
			]"
		end

	c_libusb_unlock_events (ctx: POINTER)
		external
			"C inline use <libusb.h>"
		alias
			"[
				libusb_unlock_events ((libusb_context*)$ctx);
			]"
		end

	c_libusb_event_handling_ok (ctx: POINTER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_event_handling_ok ((libusb_context*)$ctx);
			]"
		end

	c_libusb_event_handler_active (ctx: POINTER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_event_handler_active ((libusb_context*)$ctx);
			]"
		end

	c_libusb_interrupt_event_handler (ctx: POINTER)
		external
			"C inline use <libusb.h>"
		alias
			"[
				libusb_interrupt_event_handler ((libusb_context*)$ctx);
			]"
		end

	c_libusb_lock_event_waiters (ctx: POINTER)
		external
			"C inline use <libusb.h>"
		alias
			"[
				libusb_lock_event_waiters ((libusb_context*)$ctx);
			]"
		end

	c_libusb_unlock_event_waiters (ctx: POINTER)
		external
			"C inline use <libusb.h>"
		alias
			"[
				libusb_unlock_event_waiters ((libusb_context*)$ctx);
			]"
		end

	c_libusb_wait_for_event (ctx: POINTER; tv: POINTER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_wait_for_event ((libusb_context*)$ctx, (struct timeval*)$tv);
			]"
		end

	c_libusb_handle_events_timeout (ctx: POINTER; tv: POINTER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_handle_events_timeout ((libusb_context*)$ctx, (struct timeval*)$tv);
			]"
		end

	c_libusb_handle_events_timeout_completed (ctx: POINTER; tv: POINTER; completed: POINTER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_handle_events_timeout_completed ((libusb_context*)$ctx, (struct timeval*)$tv, (int*)$completed);
			]"
		end

	c_libusb_handle_events (ctx: POINTER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_handle_events ((libusb_context*)$ctx);
			]"
		end

	c_libusb_handle_events_completed (ctx: POINTER; completed: POINTER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_handle_events_completed ((libusb_context*)$ctx, (int*)$completed);
			]"
		end

	c_libusb_handle_events_locked (ctx: POINTER; tv: POINTER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_handle_events_locked ((libusb_context*)$ctx, (struct timeval*)$tv);
			]"
		end

	c_libusb_pollfds_handle_timeouts (ctx: POINTER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_pollfds_handle_timeouts ((libusb_context*)$ctx);
			]"
		end

	c_libusb_get_next_timeout (ctx: POINTER; tv: POINTER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_get_next_timeout ((libusb_context*)$ctx, (struct timeval*)$tv);
			]"
		end

	c_libusb_get_pollfds (ctx: POINTER): POINTER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_get_pollfds ((libusb_context*)$ctx);
			]"
		end

	c_libusb_free_pollfds (pollfds: POINTER)
		external
			"C inline use <libusb.h>"
		alias
			"[
				libusb_free_pollfds ((struct libusb_pollfd const**)$pollfds);
			]"
		end

	c_libusb_set_pollfd_notifiers (ctx: POINTER; added_cb: POINTER; removed_cb: POINTER; user_data: POINTER)
		external
			"C inline use <libusb.h>"
		alias
			"[
				libusb_set_pollfd_notifiers ((libusb_context*)$ctx, (libusb_pollfd_added_cb)$added_cb, (libusb_pollfd_removed_cb)$removed_cb, (void*)$user_data);
			]"
		end

	c_libusb_hotplug_register_callback (ctx: POINTER; events: INTEGER; flags: INTEGER; vendor_id: INTEGER; product_id: INTEGER; dev_class: INTEGER; cb_fn: POINTER; user_data: POINTER; callback_handle: POINTER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_hotplug_register_callback ((libusb_context*)$ctx, (libusb_hotplug_event)$events, (libusb_hotplug_flag)$flags, (int)$vendor_id, (int)$product_id, (int)$dev_class, (libusb_hotplug_callback_fn)$cb_fn, (void*)$user_data, (libusb_hotplug_callback_handle*)$callback_handle);
			]"
		end

	c_libusb_hotplug_deregister_callback (ctx: POINTER; callback_handle: INTEGER)
		external
			"C inline use <libusb.h>"
		alias
			"[
				libusb_hotplug_deregister_callback ((libusb_context*)$ctx, (libusb_hotplug_callback_handle)$callback_handle);
			]"
		end

	c_libusb_set_option (ctx: POINTER; option: INTEGER): INTEGER
		external
			"C inline use <libusb.h>"
		alias
			"[
				return libusb_set_option ((libusb_context*)$ctx, (enum libusb_option)$option);
			]"
		end

feature -- Externals Address

end
