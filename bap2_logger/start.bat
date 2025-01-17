set "serial_port=COM3"
set "serial_baud=115200"
set "serial_parity=EVEN"
set "modbus_id=1"
set "cadence_ms=1500"
set "device_type=BAT2"

@echo off
set /p "serial_port=Select COM port (for example COM3): "

start cmd /k "bap2_logger.exe --device_type %device_type% --port %serial_port% --baudrate %serial_baud% --parity %serial_parity% --cadence_ms %cadence_ms% --modbus_id %modbus_id%"