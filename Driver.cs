using System;
using Microsoft.Quantum.Simulation.Core;
using Microsoft.Quantum.Simulation.Simulators;

namespace Quantum.Qgrana
{
    class Driver
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter the number to search");
            int oc = Convert.ToInt32(Console.ReadLine());
            using (var qsim = new QuantumSimulator())
            {
                switch (oc)
                {
                    case 0:
                        Oracle0000.Run(qsim).Wait();
                        break;
                    case 1:
                        Oracle0001.Run(qsim).Wait();
                        break;
                    case 2:
                        Oracle0010.Run(qsim).Wait();
                        break;
                    case 3:
                        Oracle0011.Run(qsim).Wait();
                        break;
                    case 4:
                        Oracle0100.Run(qsim).Wait();
                        break;
                    case 5:
                        Oracle0101.Run(qsim).Wait();
                        break;
                    case 6:
                        Oracle0110.Run(qsim).Wait();
                        break;
                    case 7:
                        Oracle0111.Run(qsim).Wait();
                        break;
                    case 8:
                        Oracle1000.Run(qsim).Wait();
                        break;
                    case 9:
                        Oracle1001.Run(qsim).Wait();
                        break;
                    case 10:
                        Oracle1010.Run(qsim).Wait();
                        break;
                    case 11:
                        Oracle1011.Run(qsim).Wait();
                        break;
                    case 12:
                        Oracle1100.Run(qsim).Wait();
                        break;
                    case 13:
                        Oracle1101.Run(qsim).Wait();
                        break;
                    case 14:
                        Oracle1110.Run(qsim).Wait();
                        break;
                    case 15:
                        Oracle1111.Run(qsim).Wait();
                        break;
                    default:
                        HelloQ.Run(qsim).Wait();
                        Console.WriteLine("Default Case");
                        break;
                }
            }
        }
    }
}