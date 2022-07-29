#include "screencontroller.h"

ScreenController::ScreenController(QObject *parent)
    : QObject{parent}
{

}

QString ScreenController::getTitle()
{
    return m_title;
}

QString ScreenController::getNameProg()
{
    return m_nameProg;
}

QString ScreenController::getSubNameProg()
{
    return m_subNameProg;
}

QString ScreenController::getSrcProg()
{
    return m_srcProg;
}

QString ScreenController::getImgProg()
{
    return m_imgProg;
}

QString ScreenController::title()
{
    return m_title;
}

QString ScreenController::nameProg()
{
    return m_nameProg;
}

QString ScreenController::subNameProg()
{
    return m_subNameProg;
}

QString ScreenController::srcProg()
{
    return m_srcProg;
}

QString ScreenController::imgProg()
{
    return m_imgProg;
}

void ScreenController::setTitle(QString newTitle)
{
    if (m_title == newTitle)
        return;
    m_title = newTitle;
    emit titleChanged();
}

void ScreenController::setNameProg(QString newTitle)
{
    if (m_nameProg == newTitle)
        return;
    m_nameProg = newTitle;
    emit nameProgChanged();
}

void ScreenController::setSubNameProg(QString newTitle)
{
    if (m_subNameProg == newTitle)
        return;
    m_subNameProg = newTitle;
    emit subNameProgChanged();
}

void ScreenController::setSrcProg(QString newTitle)
{
    if (m_srcProg == newTitle)
        return;
    m_srcProg = newTitle;
    emit srcProgChanged();
}

void ScreenController::setImgProg(QString newTitle)
{
    if (m_imgProg == newTitle)
        return;
    m_imgProg = newTitle;
    emit imgProgChanged();
}
