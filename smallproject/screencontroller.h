#ifndef SCREENCONTROLLER_H
#define SCREENCONTROLLER_H

#include <QObject>

class ScreenController : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString title READ title WRITE setTitle NOTIFY titleChanged)
    Q_PROPERTY(QString nameProg READ nameProg WRITE setNameProg NOTIFY nameProgChanged)
    Q_PROPERTY(QString subNameProg READ subNameProg WRITE setSubNameProg NOTIFY subNameProgChanged)
    Q_PROPERTY(QString srcProg READ srcProg WRITE setSrcProg NOTIFY srcProgChanged)
    Q_PROPERTY(QString imgProg READ imgProg WRITE setImgProg NOTIFY imgProgChanged)
public:
    explicit ScreenController(QObject *parent = nullptr);
    Q_INVOKABLE QString getTitle();
    Q_INVOKABLE QString getNameProg();
    Q_INVOKABLE QString getSubNameProg();
    Q_INVOKABLE QString getSrcProg();
    Q_INVOKABLE QString getImgProg();
    QString title();
    QString nameProg();
    QString subNameProg();
    QString srcProg();
    QString imgProg();

public slots:
    void setTitle(QString);
    void setNameProg(QString);
    void setSubNameProg(QString);
    void setSrcProg(QString);
    void setImgProg(QString);
signals:
    void titleChanged();
    void nameProgChanged();
    void subNameProgChanged();
    void srcProgChanged();
    void imgProgChanged();

private:
    QString m_title;
    QString m_nameProg;
    QString m_subNameProg;
    QString m_srcProg;
    QString m_imgProg;
};

#endif // SCREENCONTROLLER_H
