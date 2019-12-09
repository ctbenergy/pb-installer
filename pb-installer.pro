TEMPLATE = aux

INSTALLER = ProbeBasicInstaller

INPUT = $$PWD/config/config.xml $$PWD/packages/

INPUT += $$PWD/packages/com.probebasic.core/meta/package.xml
INPUT += $$PWD/packages/com.probebasic.core/meta/installscript.qs

INPUT += $$PWD/packages/com.probebasic.fonts/meta/package.xml
INPUT += $$PWD/packages/com.probebasic.fonts/meta/installscript.qs

INPUT += $$PWD/packages/com.probebasic.sim/meta/package.xml
INPUT += $$PWD/packages/com.probebasic.sim/meta/installscript.qs

INPUT += $$PWD/packages/com.probebasic.nc/meta/package.xml
INPUT += $$PWD/packages/com.probebasic.nc/meta/installscript.qs

probebasic.input = INPUT
probebasic.output = $$INSTALLER
probebasic.commands = /home/turboss/Qt/Tools/QtInstallerFramework/3.1/bin/binarycreator -c $$PWD/config/config.xml -p $$PWD/packages ${QMAKE_FILE_OUT}
probebasic.CONFIG += target_predeps no_link combine

QMAKE_EXTRA_COMPILERS += probebasic

OTHER_FILES = README

DISTFILES +=