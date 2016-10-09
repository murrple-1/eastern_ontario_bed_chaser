#ifndef ADDFACILITYDIALOG_H
#define ADDFACILITYDIALOG_H

#include <QDialog>

namespace Ui {
    class AddFacilityDialog;
}

class AddFacilityDialog : public QDialog
{
    Q_OBJECT
public:
    AddFacilityDialog(QWidget *parent = 0);
    ~AddFacilityDialog();
private:
    Ui::AddFacilityDialog *ui;
public slots:
    void addFacility();
};

#endif // ADDFACILITYDIALOG_H