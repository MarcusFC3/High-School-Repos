import tkinter

class MyGUI:

    def __init__(self):

        self.main_window = tkinter.Tk()
        self.main_window.title("Feet and Inches Calculator")
        self.main_window.wm_minsize(100, 100)
        self.main_window.maxsize(400, 100)

        self.top_frame = tkinter.Frame(self.main_window)
        self.bottom_frame = tkinter.Frame(self.main_window)

        self.title_label = tkinter.Label(self.main_window, text="Feet and Inches Converter")
        self.title_label.pack()

        self.feet_label = tkinter.Label(self.top_frame, text="Feet: ")
        self.feet_label.pack(side="left", anchor="center")

        self.feet = tkinter.IntVar()
        self.feet_textbox = tkinter.Entry(self.top_frame, width=3, textvariable=self.feet)
        self.feet_textbox.pack(side="left", anchor="center")

        self.inches_label = tkinter.Label(self.top_frame, text="Inches: ")
        self.inches_label.pack(side="left",anchor="center")

        self.inches = tkinter.IntVar()
        self.inches_textbox = tkinter.Entry(self.top_frame, width=3,textvariable=self.inches)
        self.inches_textbox.pack(side="left",anchor="center")

        self.result = tkinter.StringVar(value="Inches :")
        self.result_label = tkinter.Label(self.bottom_frame, textvariable=self.result)
        self.result_label.pack()

        self.convert_button = tkinter.Button(self.bottom_frame,text="Convert", command=self.feet_to_inches)
        self.convert_button.pack(side="left", padx=5)

        self.quit_button = tkinter.Button(self.bottom_frame, text="Quit", command=self.main_window.destroy)
        self.quit_button.pack(side="left")

        self.top_frame.pack()
        self.bottom_frame.pack()

        tkinter.mainloop()

    def feet_to_inches(self):
        result = (self.feet.get() * 12) + self.inches.get()
        self.result.set("Inches: " + str(result))

if __name__ == "__main__":
    gui = MyGUI()