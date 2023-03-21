#include <iostream>
#include <Windows.h>
#include <XInput.h>

#pragma comment(lib,"XInput.lib")

using std::cout;
using std::endl;

int driverPort = -1;
int codriverPort = -1;

class Gamepad
{
	private:
		int cId;
		XINPUT_STATE state;
 		
		float deadzoneX;
		float deadzoneY;
 	
	public:
		Gamepad() : deadzoneX(0.05f), deadzoneY(0.02f) {}
		Gamepad(float dzX, float dzY) : deadzoneX(dzX), deadzoneY(dzY) {}
 
		float leftStickX;
		float leftStickY;
		float rightStickX;
		float rightStickY;
		float leftTrigger;
		float rightTrigger;
 		
		int  GetPort();
		XINPUT_GAMEPAD *GetState();
		bool CheckConnection();
		bool Refresh();
		bool IsPressed(WORD);
};
 
int Gamepad::GetPort()
{
	return cId + 1;
}
 
XINPUT_GAMEPAD *Gamepad::GetState()
{
	return &state.Gamepad;
}
 
bool Gamepad::CheckConnection()
{
	int controllerId = -1;
 
	for (DWORD i = 0; i < XUSER_MAX_COUNT && controllerId == -1; i++)
	{
		XINPUT_STATE state;
		ZeroMemory(&state, sizeof(XINPUT_STATE));
 
		if ((XInputGetState(i, &state) == ERROR_SUCCESS) && (i != (driverPort - 1) && (i != (codriverPort - 1))))
			controllerId = i;
	}
 	
	cId = controllerId;
 	
	return controllerId != -1;
}
 
// Returns false if the controller has been disconnected
bool Gamepad::Refresh()
{
	if (cId == -1)
		CheckConnection();
 		
	if (cId != -1)
	{
		ZeroMemory(&state, sizeof(XINPUT_STATE));
		if (XInputGetState(cId, &state) != ERROR_SUCCESS)
		{
			cId = -1;
			return false;
		}
 
		float normLX = fmaxf(-1, (float) state.Gamepad.sThumbLX / 32767);
		float normLY = fmaxf(-1, (float) state.Gamepad.sThumbLY / 32767);
 		
		leftStickX = (abs(normLX) < deadzoneX ? 0 : (abs(normLX) - deadzoneX) * (normLX / abs(normLX)));
		leftStickY = (abs(normLY) < deadzoneY ? 0 : (abs(normLY) - deadzoneY) * (normLY / abs(normLY)));
 	
		if (deadzoneX > 0) leftStickX *= 1 / (1 - deadzoneX);
		if (deadzoneY > 0) leftStickY *= 1 / (1 - deadzoneY);
 		
		float normRX = fmaxf(-1, (float) state.Gamepad.sThumbRX / 32767);
		float normRY = fmaxf(-1, (float) state.Gamepad.sThumbRY / 32767);
 		
		rightStickX = (abs(normRX) < deadzoneX ? 0 : (abs(normRX) - deadzoneX) * (normRX / abs(normRX)));
		rightStickY = (abs(normRY) < deadzoneY ? 0 : (abs(normRY) - deadzoneY) * (normRY / abs(normRY)));
 		
		if (deadzoneX > 0) rightStickX *= 1 / (1 - deadzoneX);
		if (deadzoneY > 0) rightStickY *= 1 / (1 - deadzoneY);
 		
		leftTrigger = (float) state.Gamepad.bLeftTrigger / 255;
		rightTrigger = (float) state.Gamepad.bRightTrigger / 255;
 		
		return true;
	}
	return false;
}
 
bool Gamepad::IsPressed(WORD button)
{
	return (state.Gamepad.wButtons & button) != 0;
}

int main() {
	Gamepad driver_gamepad;
 	Gamepad codriver_gamepad;
	
	bool driver_wasConnected = true;
	bool codriver_wasConnected = true;
 	
	while (true)
	{
		Sleep(100);
 		
		if (!driver_gamepad.Refresh())
		{
			if (driver_wasConnected)
			{
				driver_wasConnected = false;
				cout << "Driver: Please connect an Xbox 360 controller." << endl;
				driverPort = -1;
			} else {
				driverPort = driver_gamepad.GetPort();
			}
		}
		else
		{
			if (!driver_wasConnected)
			{
				driver_wasConnected = true;
				cout << "Driver: Controller connected on port " << driver_gamepad.GetPort() << endl;
				driverPort = driver_gamepad.GetPort();
			}
 
			
			if (driver_gamepad.IsPressed(XINPUT_GAMEPAD_START)) {
    				cout << "cam1" << endl;
			} 
			
			if (driver_gamepad.IsPressed(XINPUT_GAMEPAD_BACK)) {
    				cout << "cam0" << endl;
			} 
			
		}

		if (!codriver_gamepad.Refresh())
		{
			if (codriver_wasConnected)
			{
				codriver_wasConnected = false;
				cout << "CoDriver: Please connect an Xbox 360 controller." << endl;
				codriverPort = -1;
			} else {
				codriverPort = codriver_gamepad.GetPort();
			}
		}
		else
		{
			if (!codriver_wasConnected)
			{
				codriver_wasConnected = true;
				cout << "CoDriver: Controller connected on port " << codriver_gamepad.GetPort() << endl;
				codriverPort = codriver_gamepad.GetPort();
			}
 
			
			if (codriver_gamepad.IsPressed(XINPUT_GAMEPAD_START)) {
    				cout << "cam1" << endl;
			} 
			
			if (codriver_gamepad.IsPressed(XINPUT_GAMEPAD_BACK)) {
    				cout << "cam0" << endl;
			} 
			
		}
	}
}