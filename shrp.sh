# !/bin/bash
$SHRP_OTG=$(SHRP_OTG_MOUNT)
$SHRP_EXTERNAL=$(SHRP_EXTERNAL_MOUNT)
$SHRP_INTERNAL=$(SHRP_INTERNAL_MOUNT)
$SHRP_EDL_MODE=$(SHRP_EDL)
$SHRP_DEVICE_CODE=$(SHRP_PRODUCT)
$SHRP_MAINTAINER=$(SHRP_MAINTAINER_NAME)
$SHRP_FLASH=$(SHRP_FLASHLIGHT)
$SHRP_FONP_1=$(SHRP_FLASH_ON_PATH_1)
$SHRP_FONP_2=$(SHRP_FLASH_ON_PATH_2)
$SHRP_FONP_3=$(SHRP_FLASH_ON_PATH_3)
$SHRP_FOFP_1=$(SHRP_FLASH_OFF_PATH_1)
$SHRP_FOFP_2=$(SHRP_FLASH_OFF_PATH_2)
$SHRP_FOFP_3=$(SHRP_FLASH_OFF_PATH_3)



cat > c_ex_variables.xml <<EOF
<?xml version="1.0"?>
<recovery>
	<details>
		<resolution width="1080" height="1920"/>
		<author>Teamwin | epicX</author>
		<title>SKY HAWK RECOVERY PROJECT</title>
		<description>Only_here_you_need_to_change_your_values</description>
		<preview>preview.png</preview>
		<themeversion>3</themeversion>
	</details>
	<variables>
		<variable name="usb_otg_location" value="$SHRP_OTG"/>
		<variable name="external_storage_location" value="$SHRP_EXTERNAL"/>
		<variable name="internal_storage_location" value="$SHRP_INTERNAL"/>
		<variable name="device_code_name" value="$SHRP_DEVICE"/>
		<variable name="device_maintainer_name" value="$SHRP_MAINTAINER"/>
		<variable name="shrp_ver" value="V2.1"/>
		<variable name="shrp_ver_status" value="Stable"/>
		<variable name="has_edl_mode" value="$SHRP_EDL_MODE"/>
		<variable name="has_flashlight" value="$SHRP_FLASH"/>
	</variables>
	<templates>
		<template name="flashlight">
			<button>
				<condition var1="has_flashlight" op="=" var2="1"/>
				<placement x="975" y="1814"/>
				<image resource="c_flashlight_on"/>
				<actions>
					<action function="cmd">
$SHRP_FONP_1
$SHRP_FONP_2
$SHRP_FONP_3
					</action>
				</actions>
			</button>
			<button>
				<condition var1="has_flashlight" op="=" var2="1"/>
				<placement x="35" y="1814"/>
				<image resource="c_flashlight_off"/>
				<actions>
					<action function="cmd">
$SHRP_FOFP_1
$SHRP_FOFP_2
$SHRP_FOFP_3
					</action>
				</actions>
			</button>
		</template>
	</templates>
</recovery>
EOF
