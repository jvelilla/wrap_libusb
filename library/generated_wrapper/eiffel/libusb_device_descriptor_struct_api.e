note

	description: "This file has been generated by EWG. Do not edit. Changes will be lost!"

	generator: "Eiffel Wrapper Generator"

class LIBUSB_DEVICE_DESCRIPTOR_STRUCT_API

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

	bcdusb: INTEGER
			-- Access member `bcdUSB`
		require
			exists: exists
		do
			Result := c_bcdusb (item)
		ensure
			result_correct: Result = c_bcdusb (item)
		end

	set_bcdusb (a_value: INTEGER) 
			-- Change the value of member `bcdUSB` to `a_value`.
		require
			exists: exists
		do
			set_c_bcdusb (item, a_value)
		ensure
			bcdusb_set: a_value = bcdusb
		end

	bdeviceclass: INTEGER
			-- Access member `bDeviceClass`
		require
			exists: exists
		do
			Result := c_bdeviceclass (item)
		ensure
			result_correct: Result = c_bdeviceclass (item)
		end

	set_bdeviceclass (a_value: INTEGER) 
			-- Change the value of member `bDeviceClass` to `a_value`.
		require
			exists: exists
		do
			set_c_bdeviceclass (item, a_value)
		ensure
			bdeviceclass_set: a_value = bdeviceclass
		end

	bdevicesubclass: INTEGER
			-- Access member `bDeviceSubClass`
		require
			exists: exists
		do
			Result := c_bdevicesubclass (item)
		ensure
			result_correct: Result = c_bdevicesubclass (item)
		end

	set_bdevicesubclass (a_value: INTEGER) 
			-- Change the value of member `bDeviceSubClass` to `a_value`.
		require
			exists: exists
		do
			set_c_bdevicesubclass (item, a_value)
		ensure
			bdevicesubclass_set: a_value = bdevicesubclass
		end

	bdeviceprotocol: INTEGER
			-- Access member `bDeviceProtocol`
		require
			exists: exists
		do
			Result := c_bdeviceprotocol (item)
		ensure
			result_correct: Result = c_bdeviceprotocol (item)
		end

	set_bdeviceprotocol (a_value: INTEGER) 
			-- Change the value of member `bDeviceProtocol` to `a_value`.
		require
			exists: exists
		do
			set_c_bdeviceprotocol (item, a_value)
		ensure
			bdeviceprotocol_set: a_value = bdeviceprotocol
		end

	bmaxpacketsize0: INTEGER
			-- Access member `bMaxPacketSize0`
		require
			exists: exists
		do
			Result := c_bmaxpacketsize0 (item)
		ensure
			result_correct: Result = c_bmaxpacketsize0 (item)
		end

	set_bmaxpacketsize0 (a_value: INTEGER) 
			-- Change the value of member `bMaxPacketSize0` to `a_value`.
		require
			exists: exists
		do
			set_c_bmaxpacketsize0 (item, a_value)
		ensure
			bmaxpacketsize0_set: a_value = bmaxpacketsize0
		end

	idvendor: INTEGER
			-- Access member `idVendor`
		require
			exists: exists
		do
			Result := c_idvendor (item)
		ensure
			result_correct: Result = c_idvendor (item)
		end

	set_idvendor (a_value: INTEGER) 
			-- Change the value of member `idVendor` to `a_value`.
		require
			exists: exists
		do
			set_c_idvendor (item, a_value)
		ensure
			idvendor_set: a_value = idvendor
		end

	idproduct: INTEGER
			-- Access member `idProduct`
		require
			exists: exists
		do
			Result := c_idproduct (item)
		ensure
			result_correct: Result = c_idproduct (item)
		end

	set_idproduct (a_value: INTEGER) 
			-- Change the value of member `idProduct` to `a_value`.
		require
			exists: exists
		do
			set_c_idproduct (item, a_value)
		ensure
			idproduct_set: a_value = idproduct
		end

	bcddevice: INTEGER
			-- Access member `bcdDevice`
		require
			exists: exists
		do
			Result := c_bcddevice (item)
		ensure
			result_correct: Result = c_bcddevice (item)
		end

	set_bcddevice (a_value: INTEGER) 
			-- Change the value of member `bcdDevice` to `a_value`.
		require
			exists: exists
		do
			set_c_bcddevice (item, a_value)
		ensure
			bcddevice_set: a_value = bcddevice
		end

	imanufacturer: INTEGER
			-- Access member `iManufacturer`
		require
			exists: exists
		do
			Result := c_imanufacturer (item)
		ensure
			result_correct: Result = c_imanufacturer (item)
		end

	set_imanufacturer (a_value: INTEGER) 
			-- Change the value of member `iManufacturer` to `a_value`.
		require
			exists: exists
		do
			set_c_imanufacturer (item, a_value)
		ensure
			imanufacturer_set: a_value = imanufacturer
		end

	iproduct: INTEGER
			-- Access member `iProduct`
		require
			exists: exists
		do
			Result := c_iproduct (item)
		ensure
			result_correct: Result = c_iproduct (item)
		end

	set_iproduct (a_value: INTEGER) 
			-- Change the value of member `iProduct` to `a_value`.
		require
			exists: exists
		do
			set_c_iproduct (item, a_value)
		ensure
			iproduct_set: a_value = iproduct
		end

	iserialnumber: INTEGER
			-- Access member `iSerialNumber`
		require
			exists: exists
		do
			Result := c_iserialnumber (item)
		ensure
			result_correct: Result = c_iserialnumber (item)
		end

	set_iserialnumber (a_value: INTEGER) 
			-- Change the value of member `iSerialNumber` to `a_value`.
		require
			exists: exists
		do
			set_c_iserialnumber (item, a_value)
		ensure
			iserialnumber_set: a_value = iserialnumber
		end

	bnumconfigurations: INTEGER
			-- Access member `bNumConfigurations`
		require
			exists: exists
		do
			Result := c_bnumconfigurations (item)
		ensure
			result_correct: Result = c_bnumconfigurations (item)
		end

	set_bnumconfigurations (a_value: INTEGER) 
			-- Change the value of member `bNumConfigurations` to `a_value`.
		require
			exists: exists
		do
			set_c_bnumconfigurations (item, a_value)
		ensure
			bnumconfigurations_set: a_value = bnumconfigurations
		end

feature {NONE} -- Implementation wrapper for struct struct libusb_device_descriptor

	sizeof_external: INTEGER 
		external
			"C inline use <libusb.h>"
		alias
			"sizeof(struct libusb_device_descriptor)"
		end

	c_blength (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_device_descriptor*)$an_item)->bLength
			]"
		end

	set_c_blength (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_device_descriptor*)$an_item)->bLength =  (uint8_t)$a_value
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
				((struct libusb_device_descriptor*)$an_item)->bDescriptorType
			]"
		end

	set_c_bdescriptortype (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_device_descriptor*)$an_item)->bDescriptorType =  (uint8_t)$a_value
			]"
		ensure
			bdescriptortype_set: a_value = c_bdescriptortype (an_item)
		end

	c_bcdusb (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_device_descriptor*)$an_item)->bcdUSB
			]"
		end

	set_c_bcdusb (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_device_descriptor*)$an_item)->bcdUSB =  (uint16_t)$a_value
			]"
		ensure
			bcdusb_set: a_value = c_bcdusb (an_item)
		end

	c_bdeviceclass (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_device_descriptor*)$an_item)->bDeviceClass
			]"
		end

	set_c_bdeviceclass (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_device_descriptor*)$an_item)->bDeviceClass =  (uint8_t)$a_value
			]"
		ensure
			bdeviceclass_set: a_value = c_bdeviceclass (an_item)
		end

	c_bdevicesubclass (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_device_descriptor*)$an_item)->bDeviceSubClass
			]"
		end

	set_c_bdevicesubclass (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_device_descriptor*)$an_item)->bDeviceSubClass =  (uint8_t)$a_value
			]"
		ensure
			bdevicesubclass_set: a_value = c_bdevicesubclass (an_item)
		end

	c_bdeviceprotocol (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_device_descriptor*)$an_item)->bDeviceProtocol
			]"
		end

	set_c_bdeviceprotocol (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_device_descriptor*)$an_item)->bDeviceProtocol =  (uint8_t)$a_value
			]"
		ensure
			bdeviceprotocol_set: a_value = c_bdeviceprotocol (an_item)
		end

	c_bmaxpacketsize0 (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_device_descriptor*)$an_item)->bMaxPacketSize0
			]"
		end

	set_c_bmaxpacketsize0 (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_device_descriptor*)$an_item)->bMaxPacketSize0 =  (uint8_t)$a_value
			]"
		ensure
			bmaxpacketsize0_set: a_value = c_bmaxpacketsize0 (an_item)
		end

	c_idvendor (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_device_descriptor*)$an_item)->idVendor
			]"
		end

	set_c_idvendor (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_device_descriptor*)$an_item)->idVendor =  (uint16_t)$a_value
			]"
		ensure
			idvendor_set: a_value = c_idvendor (an_item)
		end

	c_idproduct (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_device_descriptor*)$an_item)->idProduct
			]"
		end

	set_c_idproduct (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_device_descriptor*)$an_item)->idProduct =  (uint16_t)$a_value
			]"
		ensure
			idproduct_set: a_value = c_idproduct (an_item)
		end

	c_bcddevice (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_device_descriptor*)$an_item)->bcdDevice
			]"
		end

	set_c_bcddevice (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_device_descriptor*)$an_item)->bcdDevice =  (uint16_t)$a_value
			]"
		ensure
			bcddevice_set: a_value = c_bcddevice (an_item)
		end

	c_imanufacturer (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_device_descriptor*)$an_item)->iManufacturer
			]"
		end

	set_c_imanufacturer (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_device_descriptor*)$an_item)->iManufacturer =  (uint8_t)$a_value
			]"
		ensure
			imanufacturer_set: a_value = c_imanufacturer (an_item)
		end

	c_iproduct (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_device_descriptor*)$an_item)->iProduct
			]"
		end

	set_c_iproduct (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_device_descriptor*)$an_item)->iProduct =  (uint8_t)$a_value
			]"
		ensure
			iproduct_set: a_value = c_iproduct (an_item)
		end

	c_iserialnumber (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_device_descriptor*)$an_item)->iSerialNumber
			]"
		end

	set_c_iserialnumber (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_device_descriptor*)$an_item)->iSerialNumber =  (uint8_t)$a_value
			]"
		ensure
			iserialnumber_set: a_value = c_iserialnumber (an_item)
		end

	c_bnumconfigurations (an_item: POINTER): INTEGER
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_device_descriptor*)$an_item)->bNumConfigurations
			]"
		end

	set_c_bnumconfigurations (an_item: POINTER; a_value: INTEGER) 
		require
			an_item_not_null: an_item /= default_pointer
		external
			"C inline use <libusb.h>"
		alias
			"[
				((struct libusb_device_descriptor*)$an_item)->bNumConfigurations =  (uint8_t)$a_value
			]"
		ensure
			bnumconfigurations_set: a_value = c_bnumconfigurations (an_item)
		end

end