from dataclasses import dataclass

@dataclass
class Employee:

    _name : str
    _hours_worked : float
    _hourly_rate : float

    @property
    def name(self):
        return self._name

    @name.setter
    def name(self, value):
        self._name = value

    @property
    def hours_worked(self):
        return self._hours_worked
    @hours_worked.setter
    def hours_worked(self, value):
        self._hours_worked = value

    @property
    def hourly_rate(self):
        return self._hourly_rate
    @hourly_rate.setter
    def hourly_rate(self, value):
        self._hourly_rate = value

    def calc_pay(self):
        return self._hours_worked * self.hourly_rate

@dataclass
class Salesperson(Employee):

    __weekly_sales : float
    __commission_percentage : float

    @property
    def weekly_sales(self):
        return self.__weekly_sales
    
    @weekly_sales.setter
    def weekley_sales(self, value):
        self.__weekly_sales = value
    
    def calc_pay(self):
        return round(self._hours_worked * self.hourly_rate + (self.weekley_sales * self.__commission_percentage), 2)