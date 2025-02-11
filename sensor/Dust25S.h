#ifndef DUST25S_H
#define DUST25S_H

#include "AbstractSensor.h"

namespace Sensor{

class Dust25S : public AbstractSensor{
    private:
    double a;
    double b;
    
    public:
    ~Dust25S() = default;
    Dust25S();
    Dust25S(  const std::string title, 
            const  std::string shortDesc,
            const  std::string longDesc,
            const  std::string xAxisLabel,
            const  unsigned int simulationSpan,
            const  double sensibility,
            const  double maxMeasurable,
            const  double minMeasurable,
            const double a,
            const double b);
    double trasmuteRawVal(double rawMeasure) const override;
    void accept(ConstVisitorInterface& visitor) const override;
    double getA() const;
    double getB() const;

    void setA( double) ;
    void setB( double) ;
};

}


#endif
