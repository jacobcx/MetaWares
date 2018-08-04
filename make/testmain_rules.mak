######################################
# REQUIRED
#
# TestMain_CORE_PATH
######################################



######################################
# REGISTRY

#LIBRARIES_TO_BUILD += TestMain
TestMain_FILES+=$(TestMain_CORE_PATH)/src/double.c 
TestMain_FILES+=$(TestMain_CORE_PATH)/src/master.c 
TestMain_FILES+=$(TestMain_CORE_PATH)/src/slave.c 
TestMain_FILES+=$(TestMain_CORE_PATH)/src/stub.c
TestMain_FILES+=$(TestMain_CORE_PATH)/src/ErrorHookImplementation.c 
TestMain_FILES+=$(TestMain_CORE_PATH)/platform/$(TARGET_PLATFORM)/src/TargetPlatform.c 
CC_FILES_TO_BUILD += $(TestMain_FILES)

