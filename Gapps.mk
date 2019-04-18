# Include Open-Gapps Package
$(call inherit-product, vendor/opengapps/build/opengapps-packages.mk)

GAPPS_VARIANT := micro

# Extra Included Gapps
GAPPS_PRODUCT_PACKAGES += CalculatorGoogle
GAPPS_PRODUCT_PACKAGES += CarrierServices
GAPPS_PRODUCT_PACKAGES += Chrome
GAPPS_PRODUCT_PACKAGES += CloudPrint2
GAPPS_PRODUCT_PACKAGES += Drive
GAPPS_PRODUCT_PACKAGES += GoogleContacts
GAPPS_PRODUCT_PACKAGES += GoogleDialer
GAPPS_PRODUCT_PACKAGES += GooglePrintRecommendationService
GAPPS_PRODUCT_PACKAGES += GoogleVrCore
GAPPS_PRODUCT_PACKAGES += LatinImeGoogle
GAPPS_PRODUCT_PACKAGES += Maps
GAPPS_PRODUCT_PACKAGES += Photos
GAPPS_PRODUCT_PACKAGES += PlayGames
GAPPS_PRODUCT_PACKAGES += PrebuiltBugle
GAPPS_PRODUCT_PACKAGES += PrebuiltDeskClockGoogle
GAPPS_PRODUCT_PACKAGES += PrebuiltKeep
GAPPS_PRODUCT_PACKAGES += StorageManagerGoogle
GAPPS_PRODUCT_PACKAGES += TagGoogle
GAPPS_PRODUCT_PACKAGES += YouTube

# Excluded Gapps
GAPPS_EXCLUDED_PACKAGES := PixelLauncher
GAPPS_EXCLUDED_PACKAGES := PixelLauncherIcons

# Use Old SounderPicker App
TARGET_USE_OLD_SOUND_PICKER := true
