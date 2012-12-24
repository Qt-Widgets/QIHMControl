#ifndef UAV_H
#define UAV_H

#include <QSettings>
#include <QDebug>

#include "protocol/Protocol.h"

class UAV : public QObject
{
    Q_OBJECT
public:
    static UAV* instance();
    ~UAV();

    /** @brief Euler angle */
    double getPitch() const
    {
        return pitch;
    }
    double getRoll() const
    {
        return roll;
    }
    double getYaw() const
    {
        return yaw;
    }

    /** @brief GPS Position */
    double getLatitude() const
    {
        return latitude;
    }
    double getLongitude() const
    {
        return longitude;
    }
    double getAltitude() const
    {
        return altitude;
    }

    double getMainLoop() const
    {
        return mainLoop;
    }
    double getBatteryVoltage() const
    {
        return batteryVoltage;
    }
    double getCpuLoad() const
    {
        return cpuLoad;
    }

    bool isArmed() const
    {
        return systemIsArmed;
    }

protected:
    explicit UAV(QObject *parent = 0);

    struct PID {
        float kP;
        float kI;
        float kD;
    };

    double pitch;
    double roll;
    double yaw;

    double latitude;
    double longitude;
    double altitude;

    bool systemIsArmed;

    double commandRollAngle;
    double commandPitchAngle;
    double commandYawAngle;
    double commandThrust;

    double mainLoop;
    double batteryVoltage;
    double cpuLoad;

    struct PID rollPID;
    struct PID pitchPID;
    struct PID yawPID;

    QSettings settings;

    Protocol* protocol;

    void saveSettings();
    void readSettings();

signals:

    void armed();
    void disarmed();

    void cpuLoadChange(double);
    void mainLoopChange(double);
    void batteryVoltageChange(double);

public slots:
    void updateRollPID(float kP, float kI, float kD);
    void updatePitchPID(float kP, float kI, float kD);
    void updateYawPID(float kP, float kI, float kD);

    void receiveMessage(MessageInterface);

};

#endif // UAV_H
