DWORD dwResult;
for (DWORD i=0; i < XUSER_MAX_COUNT; i++) {
	XINPUT_STATE state;
	ZeroMemory( &state, sizeof(XINPUT_STATE) );

	// Simply get the state of the controller from XInput.
	dwResult = XInputGetState( i, &state );

	if( dwResult == ERROR_SUCCESS) {
		// Controller is connected
	} else {
		// Controller is not connected
	}
}
