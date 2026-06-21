#include <QtWidgets>

int main (int argc , char* argv[]){
	
	QApplication app(argc,argv);
	
	QWidget* window = new QWidget();
	window -> setAttribute(Qt::WA_DeleteOnClose);
	QHBoxLayout* layout = new QHBoxLayout(window);
	
	QSlider* slider = new QSlider(Qt::Horizontal);
	slider ->setRange(0,50);
	
	
	QSpinBox* spin = new QSpinBox;
	spin-> setReadOnly(true);
	
	layout->addWidget(slider);
	layout->addWidget(spin);
	
	QObject::connect(slider, &QSlider::valueChanged,
					 spin , &QSpinBox::setValue);
	
	
	slider->setValue(25);
	window->show();
	
	return app.exec();
}