################################################################################
#
# PokePi
#
################################################################################

POKEPI_SITE = $(call github,bastien8060,PokePi)

define POKEPI_BUILD_CMDS
    $(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D)
endef

define POKEPI_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/PokePi $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))