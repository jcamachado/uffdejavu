# Alternative GNU Make project makefile autogenerated by Premake

ifndef config
  config=debug
endif

ifndef verbose
  SILENT = @
endif

.PHONY: clean prebuild

SHELLTYPE := posix
ifeq ($(shell echo "test"), "test")
	SHELLTYPE := msdos
endif

# Configurations
# #############################################

ifeq ($(origin CC), default)
  CC = gcc
endif
ifeq ($(origin CXX), default)
  CXX = g++
endif
ifeq ($(origin AR), default)
  AR = ar
endif
RESCOMP = windres
TARGETDIR = yaml-cpp/build
TARGET = $(TARGETDIR)/libyaml-cpp.a
INCLUDES += -Iyaml-cpp/include
FORCE_INCLUDE +=
ALL_CPPFLAGS += $(CPPFLAGS) -MD -MP $(DEFINES) $(INCLUDES)
ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
LIBS +=
LDDEPS +=
LINKCMD = $(AR) -rcs "$@" $(OBJECTS)
define PREBUILDCMDS
endef
define PRELINKCMDS
endef
define POSTBUILDCMDS
endef

ifeq ($(config),debug)
OBJDIR = yaml-cpp/build/Debug
DEFINES +=
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -fPIC -g -ggdb -Wall -Wextra -Wpedantic -Wshadow
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -fPIC -g -std=c++20 -ggdb -Wall -Wextra -Wpedantic -Wshadow
ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib64 -m64

else ifeq ($(config),release)
OBJDIR = yaml-cpp/build/Release
DEFINES +=
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -O2 -fPIC -Wall -Wextra -Wpedantic -Wshadow
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -O2 -fPIC -std=c++20 -Wall -Wextra -Wpedantic -Wshadow
ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib64 -m64 -s

else ifeq ($(config),dist)
OBJDIR = yaml-cpp/build/Dist
DEFINES += -DNDEBUG
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -O2 -fPIC -Wall -Wextra -Wpedantic -Wshadow
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -O2 -fPIC -std=c++20 -Wall -Wextra -Wpedantic -Wshadow
ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib64 -m64 -s

endif

# Per File Configurations
# #############################################


# File sets
# #############################################

GENERATED :=
OBJECTS :=

GENERATED += $(OBJDIR)/binary.o
GENERATED += $(OBJDIR)/convert.o
GENERATED += $(OBJDIR)/depthguard.o
GENERATED += $(OBJDIR)/directives.o
GENERATED += $(OBJDIR)/emit.o
GENERATED += $(OBJDIR)/emitfromevents.o
GENERATED += $(OBJDIR)/emitter.o
GENERATED += $(OBJDIR)/emitterstate.o
GENERATED += $(OBJDIR)/emitterutils.o
GENERATED += $(OBJDIR)/exceptions.o
GENERATED += $(OBJDIR)/exp.o
GENERATED += $(OBJDIR)/graphbuilder.o
GENERATED += $(OBJDIR)/graphbuilderadapter.o
GENERATED += $(OBJDIR)/memory.o
GENERATED += $(OBJDIR)/node.o
GENERATED += $(OBJDIR)/node_data.o
GENERATED += $(OBJDIR)/nodebuilder.o
GENERATED += $(OBJDIR)/nodeevents.o
GENERATED += $(OBJDIR)/null.o
GENERATED += $(OBJDIR)/ostream_wrapper.o
GENERATED += $(OBJDIR)/parse.o
GENERATED += $(OBJDIR)/parser.o
GENERATED += $(OBJDIR)/regex_yaml.o
GENERATED += $(OBJDIR)/scanner.o
GENERATED += $(OBJDIR)/scanscalar.o
GENERATED += $(OBJDIR)/scantag.o
GENERATED += $(OBJDIR)/scantoken.o
GENERATED += $(OBJDIR)/simplekey.o
GENERATED += $(OBJDIR)/singledocparser.o
GENERATED += $(OBJDIR)/stream.o
GENERATED += $(OBJDIR)/tag.o
OBJECTS += $(OBJDIR)/binary.o
OBJECTS += $(OBJDIR)/convert.o
OBJECTS += $(OBJDIR)/depthguard.o
OBJECTS += $(OBJDIR)/directives.o
OBJECTS += $(OBJDIR)/emit.o
OBJECTS += $(OBJDIR)/emitfromevents.o
OBJECTS += $(OBJDIR)/emitter.o
OBJECTS += $(OBJDIR)/emitterstate.o
OBJECTS += $(OBJDIR)/emitterutils.o
OBJECTS += $(OBJDIR)/exceptions.o
OBJECTS += $(OBJDIR)/exp.o
OBJECTS += $(OBJDIR)/graphbuilder.o
OBJECTS += $(OBJDIR)/graphbuilderadapter.o
OBJECTS += $(OBJDIR)/memory.o
OBJECTS += $(OBJDIR)/node.o
OBJECTS += $(OBJDIR)/node_data.o
OBJECTS += $(OBJDIR)/nodebuilder.o
OBJECTS += $(OBJDIR)/nodeevents.o
OBJECTS += $(OBJDIR)/null.o
OBJECTS += $(OBJDIR)/ostream_wrapper.o
OBJECTS += $(OBJDIR)/parse.o
OBJECTS += $(OBJDIR)/parser.o
OBJECTS += $(OBJDIR)/regex_yaml.o
OBJECTS += $(OBJDIR)/scanner.o
OBJECTS += $(OBJDIR)/scanscalar.o
OBJECTS += $(OBJDIR)/scantag.o
OBJECTS += $(OBJDIR)/scantoken.o
OBJECTS += $(OBJDIR)/simplekey.o
OBJECTS += $(OBJDIR)/singledocparser.o
OBJECTS += $(OBJDIR)/stream.o
OBJECTS += $(OBJDIR)/tag.o

# Rules
# #############################################

all: $(TARGET)
	@:

$(TARGET): $(GENERATED) $(OBJECTS) $(LDDEPS) | $(TARGETDIR)
	$(PRELINKCMDS)
	@echo Linking yaml-cpp
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning yaml-cpp
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(GENERATED)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(GENERATED)) del /s /q $(subst /,\\,$(GENERATED))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild: | $(OBJDIR)
	$(PREBUILDCMDS)

ifneq (,$(PCH))
$(OBJECTS): $(GCH) | $(PCH_PLACEHOLDER)
$(GCH): $(PCH) | prebuild
	@echo $(notdir $<)
	$(SILENT) $(CXX) -x c++-header $(ALL_CXXFLAGS) -o "$@" -MF "$(@:%.gch=%.d)" -c "$<"
$(PCH_PLACEHOLDER): $(GCH) | $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) touch "$@"
else
	$(SILENT) echo $null >> "$@"
endif
else
$(OBJECTS): | prebuild
endif


# File Rules
# #############################################

$(OBJDIR)/binary.o: yaml-cpp/src/binary.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/graphbuilder.o: yaml-cpp/src/contrib/graphbuilder.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/graphbuilderadapter.o: yaml-cpp/src/contrib/graphbuilderadapter.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/convert.o: yaml-cpp/src/convert.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/depthguard.o: yaml-cpp/src/depthguard.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/directives.o: yaml-cpp/src/directives.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/emit.o: yaml-cpp/src/emit.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/emitfromevents.o: yaml-cpp/src/emitfromevents.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/emitter.o: yaml-cpp/src/emitter.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/emitterstate.o: yaml-cpp/src/emitterstate.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/emitterutils.o: yaml-cpp/src/emitterutils.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/exceptions.o: yaml-cpp/src/exceptions.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/exp.o: yaml-cpp/src/exp.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/memory.o: yaml-cpp/src/memory.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/node.o: yaml-cpp/src/node.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/node_data.o: yaml-cpp/src/node_data.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/nodebuilder.o: yaml-cpp/src/nodebuilder.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/nodeevents.o: yaml-cpp/src/nodeevents.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/null.o: yaml-cpp/src/null.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ostream_wrapper.o: yaml-cpp/src/ostream_wrapper.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/parse.o: yaml-cpp/src/parse.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/parser.o: yaml-cpp/src/parser.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/regex_yaml.o: yaml-cpp/src/regex_yaml.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/scanner.o: yaml-cpp/src/scanner.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/scanscalar.o: yaml-cpp/src/scanscalar.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/scantag.o: yaml-cpp/src/scantag.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/scantoken.o: yaml-cpp/src/scantoken.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/simplekey.o: yaml-cpp/src/simplekey.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/singledocparser.o: yaml-cpp/src/singledocparser.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/stream.o: yaml-cpp/src/stream.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/tag.o: yaml-cpp/src/tag.cpp
	@echo "$(notdir $<)"
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(PCH_PLACEHOLDER).d
endif