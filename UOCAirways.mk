##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Menu
ProjectName            :=UOCAirways
ConfigurationName      :=Menu
WorkspacePath          :=/home/uoc/Desktop/UOCAirways_PR2_enu_v2
ProjectPath            :=/home/uoc/Desktop/UOCAirways_PR2_enu_v2
IntermediateDirectory  :=./Menu
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=uoc
Date                   :=18/05/19
CodeLitePath           :=/home/uoc/.codelite
LinkerName             :=gcc
SharedObjectLinkerName :=gcc -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.o.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E 
ObjectsFileList        :="UOCAirways.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch)./include $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := ar rcus
CXX      := gcc
CC       := gcc
CXXFLAGS :=  -Wno-unused-result -g -O2 -Wall $(Preprocessors)
CFLAGS   :=  -Wno-unused-result -g -O2 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=$(IntermediateDirectory)/src_main.c$(ObjectSuffix) $(IntermediateDirectory)/src_list.c$(ObjectSuffix) $(IntermediateDirectory)/src_api.c$(ObjectSuffix) $(IntermediateDirectory)/src_passenger.c$(ObjectSuffix) $(IntermediateDirectory)/src_queue.c$(ObjectSuffix) $(IntermediateDirectory)/src_menu.c$(ObjectSuffix) $(IntermediateDirectory)/src_test.c$(ObjectSuffix) $(IntermediateDirectory)/src_flight.c$(ObjectSuffix) $(IntermediateDirectory)/src_plane.c$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@test -d ./Menu || $(MakeDirCommand) ./Menu


$(IntermediateDirectory)/.d:
	@test -d ./Menu || $(MakeDirCommand) ./Menu

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/src_main.c$(ObjectSuffix): src/main.c $(IntermediateDirectory)/src_main.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/uoc/Desktop/UOCAirways_PR2_enu_v2/src/main.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_main.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_main.c$(DependSuffix): src/main.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_main.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_main.c$(DependSuffix) -MM src/main.c

$(IntermediateDirectory)/src_main.c$(PreprocessSuffix): src/main.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_main.c$(PreprocessSuffix) src/main.c

$(IntermediateDirectory)/src_list.c$(ObjectSuffix): src/list.c $(IntermediateDirectory)/src_list.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/uoc/Desktop/UOCAirways_PR2_enu_v2/src/list.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_list.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_list.c$(DependSuffix): src/list.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_list.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_list.c$(DependSuffix) -MM src/list.c

$(IntermediateDirectory)/src_list.c$(PreprocessSuffix): src/list.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_list.c$(PreprocessSuffix) src/list.c

$(IntermediateDirectory)/src_api.c$(ObjectSuffix): src/api.c $(IntermediateDirectory)/src_api.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/uoc/Desktop/UOCAirways_PR2_enu_v2/src/api.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_api.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_api.c$(DependSuffix): src/api.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_api.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_api.c$(DependSuffix) -MM src/api.c

$(IntermediateDirectory)/src_api.c$(PreprocessSuffix): src/api.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_api.c$(PreprocessSuffix) src/api.c

$(IntermediateDirectory)/src_passenger.c$(ObjectSuffix): src/passenger.c $(IntermediateDirectory)/src_passenger.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/uoc/Desktop/UOCAirways_PR2_enu_v2/src/passenger.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_passenger.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_passenger.c$(DependSuffix): src/passenger.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_passenger.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_passenger.c$(DependSuffix) -MM src/passenger.c

$(IntermediateDirectory)/src_passenger.c$(PreprocessSuffix): src/passenger.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_passenger.c$(PreprocessSuffix) src/passenger.c

$(IntermediateDirectory)/src_queue.c$(ObjectSuffix): src/queue.c $(IntermediateDirectory)/src_queue.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/uoc/Desktop/UOCAirways_PR2_enu_v2/src/queue.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_queue.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_queue.c$(DependSuffix): src/queue.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_queue.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_queue.c$(DependSuffix) -MM src/queue.c

$(IntermediateDirectory)/src_queue.c$(PreprocessSuffix): src/queue.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_queue.c$(PreprocessSuffix) src/queue.c

$(IntermediateDirectory)/src_menu.c$(ObjectSuffix): src/menu.c $(IntermediateDirectory)/src_menu.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/uoc/Desktop/UOCAirways_PR2_enu_v2/src/menu.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_menu.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_menu.c$(DependSuffix): src/menu.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_menu.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_menu.c$(DependSuffix) -MM src/menu.c

$(IntermediateDirectory)/src_menu.c$(PreprocessSuffix): src/menu.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_menu.c$(PreprocessSuffix) src/menu.c

$(IntermediateDirectory)/src_test.c$(ObjectSuffix): src/test.c $(IntermediateDirectory)/src_test.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/uoc/Desktop/UOCAirways_PR2_enu_v2/src/test.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_test.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_test.c$(DependSuffix): src/test.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_test.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_test.c$(DependSuffix) -MM src/test.c

$(IntermediateDirectory)/src_test.c$(PreprocessSuffix): src/test.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_test.c$(PreprocessSuffix) src/test.c

$(IntermediateDirectory)/src_flight.c$(ObjectSuffix): src/flight.c $(IntermediateDirectory)/src_flight.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/uoc/Desktop/UOCAirways_PR2_enu_v2/src/flight.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_flight.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_flight.c$(DependSuffix): src/flight.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_flight.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_flight.c$(DependSuffix) -MM src/flight.c

$(IntermediateDirectory)/src_flight.c$(PreprocessSuffix): src/flight.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_flight.c$(PreprocessSuffix) src/flight.c

$(IntermediateDirectory)/src_plane.c$(ObjectSuffix): src/plane.c $(IntermediateDirectory)/src_plane.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/uoc/Desktop/UOCAirways_PR2_enu_v2/src/plane.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_plane.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_plane.c$(DependSuffix): src/plane.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_plane.c$(ObjectSuffix) -MF$(IntermediateDirectory)/src_plane.c$(DependSuffix) -MM src/plane.c

$(IntermediateDirectory)/src_plane.c$(PreprocessSuffix): src/plane.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_plane.c$(PreprocessSuffix) src/plane.c


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Menu/


