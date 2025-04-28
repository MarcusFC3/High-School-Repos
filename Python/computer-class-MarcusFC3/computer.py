from dataclasses import dataclass

@dataclass
class Computer:

    __cpu_speed: int = 0
    __ram_size: int = 0
    __drive_size: int = 0


    @property
    def cpu_speed(self):
        return self.__cpu_speed

    @cpu_speed.setter
    def cpu_speed(self, value):
        if value > 1:
            self.__cpu_speed = value
        else:
            raise ValueError("cpu_speed must be positive")
    @property
    def ram_size(self):
        return self.__ram_size

    @ram_size.setter
    def ram_size(self, value):
        if value > 1:
            self.__ram_size = value
        else:
            raise ValueError("ram_size must be positive")

    @property
    def drive_size(self):
        return self.__drive_size

    @drive_size.setter
    def drive_size(self, value):
        if value > 1:
            self.__drive_size = value
        else:
            raise ValueError("drive_size must be positive")
