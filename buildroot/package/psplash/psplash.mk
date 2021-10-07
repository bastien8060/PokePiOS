################################################################################
#
# psplash
#
################################################################################

PSPLASH_VERSION = 20ac760f8a59b78c3c314528b51e200473e43702
PSPLASH_SITE = git://github.com/bastien8060/PokePi_psplash
PSPLASH_LICENSE = GPL-2.0+
PSPLASH_LICENSE_FILES = COPYING
PSPLASH_AUTORECONF = YES

define PSPLASH_INSTALL_INIT_SYSTEMD
	$(INSTALL) -D -m 644 package/psplash/psplash-start.service \
		$(TARGET_DIR)/usr/lib/systemd/system/psplash-start.service

	$(INSTALL) -D -m 644 package/psplash/psplash-quit.service \
		$(TARGET_DIR)/usr/lib/systemd/system/psplash-quit.service
endef

$(eval $(autotools-package))
