# Boot Animation
scr_resolution := 1080
du_device := $(patsubst %f,%,$(subst du_,,$(TARGET_PRODUCT)))

ifneq ($(filter crosshatch coral dragon marlin taimen,$(du_device)),)
scr_resolution := 1440
endif

ifneq ($(wildcard vendor/themes/bootanimation/$(scr_resolution).zip),)
PRODUCT_COPY_FILES += \
    vendor/themes/bootanimation/$(scr_resolution).zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip \
    vendor/themes/bootanimation/$(scr_resolution)-dark.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation-dark.zip
endif
