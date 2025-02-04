import sys
from PyQt5.QtWidgets import QApplication
from controls.MainWindow import MainWindow


def main():
    app = QApplication(sys.argv)
    main_window = MainWindow()
    main_window.show()
    result = app.exec()
    sys.exit(result)


if __name__ == '__main__':
    main()
