################################################################################
#
# PokePi
#
################################################################################

POKEPI_VERSION = main
POKEPI_SITE = git://github.com/bastien8060/PokePi

define POKEPI_BUILD_CMDS
    rm -rf $(@D)
    git clone --depth 1 $(POKEPI_SITE) $(@D)
    cd $(@D)
    git -C "$(@D)/" submodule update --init --recursive
    touch $(@D)/.stamp_downloaded
    cd ..
    $(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D)
endef

define POKEPI_INSTALL_TARGET_CMDS
        $(INSTALL) -D -m 0755 $(@D)/PokePi $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
