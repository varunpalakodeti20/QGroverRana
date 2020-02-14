namespace Quantum.Qgrana 
{
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
        
    operation HelloQ () : Unit 
    {
        Message("Hello quantum world!");
    }

    operation Oracle0000 () : Unit
    {
        //Message("Hello quantum world!");
        using (q = Qubit[5])
        {
            //Declarations
            mutable q00 = 0;
            mutable q01 = 0;
            mutable q02 = 0;
            mutable q03 = 0;
            mutable q04 = 0;
            mutable q05 = 0;
            mutable q06 = 0;
            mutable q07 = 0;
            mutable q08 = 0;
            mutable q09 = 0;
            mutable q10 = 0;
            mutable q11 = 0;
            mutable q12 = 0;
            mutable q13 = 0;
            mutable q14 = 0;
            mutable q15 = 0;
            for(i in 1..1000)
            {
                //a
                X(q[4]);
                //b
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                //Oracle
                X(q[0]);
                X(q[1]);
                X(q[2]);
                X(q[3]);
                let cq = [q[0],q[1],q[2],q[3]];
                Controlled X(cq,q[4]);
                X(q[0]);
                X(q[1]);
                X(q[2]);
                X(q[3]);
                //c
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                //d
                X(q[0]);
                X(q[1]);
                X(q[2]);
                X(q[3]);
                //e
                H(q[3]);
                let c = [q[0],q[1],q[2]];
                Controlled X(c,q[3]);
                H(q[3]);
                //f 
                X(q[0]);
                X(q[1]);
                X(q[2]);
                X(q[3]);
                //g
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                //let q3 = M(q[2]);
                ResetAll(q);
                //Message($"{q1},{q2},{q3},{q4}");
                if(q1 == Zero and q2 == Zero and q3 == Zero and q4 == Zero)
                {
                    set q00 = q00 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == Zero and q4 == One)
                {
                    set q01 = q01 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == One and q4 == Zero)
                {
                    set q02 = q02 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == One and q4 == One)
                {
                    set q03 = q03 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == Zero and q4 == Zero)
                {
                    set q04 = q04 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == Zero and q4 == One)
                {
                    set q05 = q05 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == Zero)
                {
                    set q06 = q06 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == One and q4 == One)
                {
                    set q07 = q07 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == Zero and q4 == Zero)
                {
                    set q08 = q08 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == Zero and q4 == One)
                {
                    set q09 = q09 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == One and q4 == Zero)
                {
                    set q10 = q10 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == One and q4 == One)
                {
                    set q11 = q11 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == Zero and q4 == Zero)
                {
                    set q12 = q12 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == Zero and q4 == One)
                {
                    set q13 = q13 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == Zero)
                {
                    set q14 = q14 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == One)
                {
                    set q15 = q15 + 1;     
			    }
		    }
            //Message($"{q06}");
            //Message($"{q00},{q01},{q02},{q03},{q04},{q05},{q06},{q07},{q08},{q09},{q10},{q11},{q12},{q13},{q14},{q15}");
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
		}
    }

    operation Oracle0001 () : Unit
    {
        //Message("Hello quantum world!");
        using (q = Qubit[5])
        {
            //Declarations
            mutable q00 = 0;
            mutable q01 = 0;
            mutable q02 = 0;
            mutable q03 = 0;
            mutable q04 = 0;
            mutable q05 = 0;
            mutable q06 = 0;
            mutable q07 = 0;
            mutable q08 = 0;
            mutable q09 = 0;
            mutable q10 = 0;
            mutable q11 = 0;
            mutable q12 = 0;
            mutable q13 = 0;
            mutable q14 = 0;
            mutable q15 = 0;
            for(i in 1..1000)
            {
                //a
                X(q[4]);
                //b
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                //Oracle
                X(q[0]);
                X(q[1]);
                X(q[2]);
                let cq = [q[0],q[1],q[2],q[3]];
                Controlled X(cq,q[4]);
                X(q[0]);
                X(q[1]);
                X(q[2]);
                //c
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                //d
                X(q[0]);
                X(q[1]);
                X(q[2]);
                X(q[3]);
                //e
                H(q[3]);
                let c = [q[0],q[1],q[2]];
                Controlled X(c,q[3]);
                H(q[3]);
                //f 
                X(q[0]);
                X(q[1]);
                X(q[2]);
                X(q[3]);
                //g
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                //let q3 = M(q[2]);
                ResetAll(q);
                //Message($"{q1},{q2},{q3},{q4}");
                if(q1 == Zero and q2 == Zero and q3 == Zero and q4 == Zero)
                {
                    set q00 = q00 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == Zero and q4 == One)
                {
                    set q01 = q01 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == One and q4 == Zero)
                {
                    set q02 = q02 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == One and q4 == One)
                {
                    set q03 = q03 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == Zero and q4 == Zero)
                {
                    set q04 = q04 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == Zero and q4 == One)
                {
                    set q05 = q05 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == Zero)
                {
                    set q06 = q06 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == One and q4 == One)
                {
                    set q07 = q07 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == Zero and q4 == Zero)
                {
                    set q08 = q08 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == Zero and q4 == One)
                {
                    set q09 = q09 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == One and q4 == Zero)
                {
                    set q10 = q10 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == One and q4 == One)
                {
                    set q11 = q11 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == Zero and q4 == Zero)
                {
                    set q12 = q12 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == Zero and q4 == One)
                {
                    set q13 = q13 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == Zero)
                {
                    set q14 = q14 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == One)
                {
                    set q15 = q15 + 1;     
			    }
		    }
            //Message($"{q06}");
            //Message($"{q00},{q01},{q02},{q03},{q04},{q05},{q06},{q07},{q08},{q09},{q10},{q11},{q12},{q13},{q14},{q15}");
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
		}
    }

    operation Oracle0010 () : Unit
    {
        //Message("Hello quantum world!");
        using (q = Qubit[5])
        {
            //Declarations
            mutable q00 = 0;
            mutable q01 = 0;
            mutable q02 = 0;
            mutable q03 = 0;
            mutable q04 = 0;
            mutable q05 = 0;
            mutable q06 = 0;
            mutable q07 = 0;
            mutable q08 = 0;
            mutable q09 = 0;
            mutable q10 = 0;
            mutable q11 = 0;
            mutable q12 = 0;
            mutable q13 = 0;
            mutable q14 = 0;
            mutable q15 = 0;
            for(i in 1..1000)
            {
                //a
                X(q[4]);
                //b
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                //Oracle
                X(q[0]);
                X(q[1]);
                X(q[3]);
                let cq = [q[0],q[1],q[2],q[3]];
                Controlled X(cq,q[4]);
                X(q[0]);
                X(q[1]);
                X(q[3]);
                //c
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                //d
                X(q[0]);
                X(q[1]);
                X(q[2]);
                X(q[3]);
                //e
                H(q[3]);
                let c = [q[0],q[1],q[2]];
                Controlled X(c,q[3]);
                H(q[3]);
                //f 
                X(q[0]);
                X(q[1]);
                X(q[2]);
                X(q[3]);
                //g
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                //let q3 = M(q[2]);
                ResetAll(q);
                //Message($"{q1},{q2},{q3},{q4}");
                if(q1 == Zero and q2 == Zero and q3 == Zero and q4 == Zero)
                {
                    set q00 = q00 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == Zero and q4 == One)
                {
                    set q01 = q01 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == One and q4 == Zero)
                {
                    set q02 = q02 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == One and q4 == One)
                {
                    set q03 = q03 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == Zero and q4 == Zero)
                {
                    set q04 = q04 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == Zero and q4 == One)
                {
                    set q05 = q05 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == Zero)
                {
                    set q06 = q06 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == One and q4 == One)
                {
                    set q07 = q07 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == Zero and q4 == Zero)
                {
                    set q08 = q08 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == Zero and q4 == One)
                {
                    set q09 = q09 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == One and q4 == Zero)
                {
                    set q10 = q10 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == One and q4 == One)
                {
                    set q11 = q11 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == Zero and q4 == Zero)
                {
                    set q12 = q12 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == Zero and q4 == One)
                {
                    set q13 = q13 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == Zero)
                {
                    set q14 = q14 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == One)
                {
                    set q15 = q15 + 1;     
			    }
		    }
            //Message($"{q06}");
            //Message($"{q00},{q01},{q02},{q03},{q04},{q05},{q06},{q07},{q08},{q09},{q10},{q11},{q12},{q13},{q14},{q15}");
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
		}
    }

    operation Oracle0011 () : Unit
    {
        //Message("Hello quantum world!");
        using (q = Qubit[5])
        {
            //Declarations
            mutable q00 = 0;
            mutable q01 = 0;
            mutable q02 = 0;
            mutable q03 = 0;
            mutable q04 = 0;
            mutable q05 = 0;
            mutable q06 = 0;
            mutable q07 = 0;
            mutable q08 = 0;
            mutable q09 = 0;
            mutable q10 = 0;
            mutable q11 = 0;
            mutable q12 = 0;
            mutable q13 = 0;
            mutable q14 = 0;
            mutable q15 = 0;
            for(i in 1..1000)
            {
                //a
                X(q[4]);
                //b
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                //Oracle
                X(q[0]);
                X(q[1]);
                let cq = [q[0],q[1],q[2],q[3]];
                Controlled X(cq,q[4]);
                X(q[0]);
                X(q[1]);
                //c
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                //d
                X(q[0]);
                X(q[1]);
                X(q[2]);
                X(q[3]);
                //e
                H(q[3]);
                let c = [q[0],q[1],q[2]];
                Controlled X(c,q[3]);
                H(q[3]);
                //f 
                X(q[0]);
                X(q[1]);
                X(q[2]);
                X(q[3]);
                //g
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                //let q3 = M(q[2]);
                ResetAll(q);
                //Message($"{q1},{q2},{q3},{q4}");
                if(q1 == Zero and q2 == Zero and q3 == Zero and q4 == Zero)
                {
                    set q00 = q00 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == Zero and q4 == One)
                {
                    set q01 = q01 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == One and q4 == Zero)
                {
                    set q02 = q02 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == One and q4 == One)
                {
                    set q03 = q03 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == Zero and q4 == Zero)
                {
                    set q04 = q04 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == Zero and q4 == One)
                {
                    set q05 = q05 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == Zero)
                {
                    set q06 = q06 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == One and q4 == One)
                {
                    set q07 = q07 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == Zero and q4 == Zero)
                {
                    set q08 = q08 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == Zero and q4 == One)
                {
                    set q09 = q09 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == One and q4 == Zero)
                {
                    set q10 = q10 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == One and q4 == One)
                {
                    set q11 = q11 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == Zero and q4 == Zero)
                {
                    set q12 = q12 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == Zero and q4 == One)
                {
                    set q13 = q13 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == Zero)
                {
                    set q14 = q14 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == One)
                {
                    set q15 = q15 + 1;     
			    }
		    }
            //Message($"{q06}");
            //Message($"{q00},{q01},{q02},{q03},{q04},{q05},{q06},{q07},{q08},{q09},{q10},{q11},{q12},{q13},{q14},{q15}");
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
		}
    }
    
    operation Oracle0100 () : Unit
    {
        //Message("Hello quantum world!");
        using (q = Qubit[5])
        {
            //Declarations
            mutable q00 = 0;
            mutable q01 = 0;
            mutable q02 = 0;
            mutable q03 = 0;
            mutable q04 = 0;
            mutable q05 = 0;
            mutable q06 = 0;
            mutable q07 = 0;
            mutable q08 = 0;
            mutable q09 = 0;
            mutable q10 = 0;
            mutable q11 = 0;
            mutable q12 = 0;
            mutable q13 = 0;
            mutable q14 = 0;
            mutable q15 = 0;
            for(i in 1..1000)
            {
                //a
                X(q[4]);
                //b
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                //Oracle
                X(q[0]);
                //X(q[1]);
                X(q[2]);
                X(q[3]);
                let cq = [q[0],q[1],q[2],q[3]];
                Controlled X(cq,q[4]);
                X(q[0]);
                //X(q[1]);
                X(q[2]);
                X(q[3]);
                //c
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                //d
                X(q[0]);
                X(q[1]);
                X(q[2]);
                X(q[3]);
                //e
                H(q[3]);
                let c = [q[0],q[1],q[2]];
                Controlled X(c,q[3]);
                H(q[3]);
                //f 
                X(q[0]);
                X(q[1]);
                X(q[2]);
                X(q[3]);
                //g
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                //let q3 = M(q[2]);
                ResetAll(q);
                //Message($"{q1},{q2},{q3},{q4}");
                if(q1 == Zero and q2 == Zero and q3 == Zero and q4 == Zero)
                {
                    set q00 = q00 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == Zero and q4 == One)
                {
                    set q01 = q01 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == One and q4 == Zero)
                {
                    set q02 = q02 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == One and q4 == One)
                {
                    set q03 = q03 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == Zero and q4 == Zero)
                {
                    set q04 = q04 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == Zero and q4 == One)
                {
                    set q05 = q05 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == Zero)
                {
                    set q06 = q06 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == One and q4 == One)
                {
                    set q07 = q07 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == Zero and q4 == Zero)
                {
                    set q08 = q08 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == Zero and q4 == One)
                {
                    set q09 = q09 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == One and q4 == Zero)
                {
                    set q10 = q10 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == One and q4 == One)
                {
                    set q11 = q11 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == Zero and q4 == Zero)
                {
                    set q12 = q12 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == Zero and q4 == One)
                {
                    set q13 = q13 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == Zero)
                {
                    set q14 = q14 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == One)
                {
                    set q15 = q15 + 1;     
			    }
		    }
            //Message($"{q06}");
            //Message($"{q00},{q01},{q02},{q03},{q04},{q05},{q06},{q07},{q08},{q09},{q10},{q11},{q12},{q13},{q14},{q15}");
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
		}
    }

    operation Oracle0101 () : Unit
    {
        //Message("Hello quantum world!");
        using (q = Qubit[5])
        {
            //Declarations
            mutable q00 = 0;
            mutable q01 = 0;
            mutable q02 = 0;
            mutable q03 = 0;
            mutable q04 = 0;
            mutable q05 = 0;
            mutable q06 = 0;
            mutable q07 = 0;
            mutable q08 = 0;
            mutable q09 = 0;
            mutable q10 = 0;
            mutable q11 = 0;
            mutable q12 = 0;
            mutable q13 = 0;
            mutable q14 = 0;
            mutable q15 = 0;
            for(i in 1..1000)
            {
                //a
                X(q[4]);
                //b
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                //Oracle
                X(q[0]);
                //X(q[1]);
                X(q[2]);
                //X(q[3]);
                let cq = [q[0],q[1],q[2],q[3]];
                Controlled X(cq,q[4]);
                X(q[0]);
                //X(q[1]);
                X(q[2]);
                //X(q[3]);
                //c
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                //d
                X(q[0]);
                X(q[1]);
                X(q[2]);
                X(q[3]);
                //e
                H(q[3]);
                let c = [q[0],q[1],q[2]];
                Controlled X(c,q[3]);
                H(q[3]);
                //f 
                X(q[0]);
                X(q[1]);
                X(q[2]);
                X(q[3]);
                //g
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                //let q3 = M(q[2]);
                ResetAll(q);
                //Message($"{q1},{q2},{q3},{q4}");
                if(q1 == Zero and q2 == Zero and q3 == Zero and q4 == Zero)
                {
                    set q00 = q00 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == Zero and q4 == One)
                {
                    set q01 = q01 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == One and q4 == Zero)
                {
                    set q02 = q02 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == One and q4 == One)
                {
                    set q03 = q03 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == Zero and q4 == Zero)
                {
                    set q04 = q04 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == Zero and q4 == One)
                {
                    set q05 = q05 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == Zero)
                {
                    set q06 = q06 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == One and q4 == One)
                {
                    set q07 = q07 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == Zero and q4 == Zero)
                {
                    set q08 = q08 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == Zero and q4 == One)
                {
                    set q09 = q09 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == One and q4 == Zero)
                {
                    set q10 = q10 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == One and q4 == One)
                {
                    set q11 = q11 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == Zero and q4 == Zero)
                {
                    set q12 = q12 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == Zero and q4 == One)
                {
                    set q13 = q13 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == Zero)
                {
                    set q14 = q14 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == One)
                {
                    set q15 = q15 + 1;     
			    }
		    }
            //Message($"{q06}");
            //Message($"{q00},{q01},{q02},{q03},{q04},{q05},{q06},{q07},{q08},{q09},{q10},{q11},{q12},{q13},{q14},{q15}");
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
		}
    }

        operation Oracle0110 () : Unit
    {
        //Message("Hello quantum world!");
        using (q = Qubit[5])
        {
            //Declarations
            mutable q00 = 0;
            mutable q01 = 0;
            mutable q02 = 0;
            mutable q03 = 0;
            mutable q04 = 0;
            mutable q05 = 0;
            mutable q06 = 0;
            mutable q07 = 0;
            mutable q08 = 0;
            mutable q09 = 0;
            mutable q10 = 0;
            mutable q11 = 0;
            mutable q12 = 0;
            mutable q13 = 0;
            mutable q14 = 0;
            mutable q15 = 0;
            for(i in 1..1000)
            {
                //a
                X(q[4]);
                //b
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                //Oracle
                X(q[0]);
                //X(q[1]);
                //X(q[2]);
                X(q[3]);
                let cq = [q[0],q[1],q[2],q[3]];
                Controlled X(cq,q[4]);
                X(q[0]);
                //X(q[1]);
                //X(q[2]);
                X(q[3]);
                //c
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                //d
                X(q[0]);
                X(q[1]);
                X(q[2]);
                X(q[3]);
                //e
                H(q[3]);
                let c = [q[0],q[1],q[2]];
                Controlled X(c,q[3]);
                H(q[3]);
                //f 
                X(q[0]);
                X(q[1]);
                X(q[2]);
                X(q[3]);
                //g
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                //let q3 = M(q[2]);
                ResetAll(q);
                //Message($"{q1},{q2},{q3},{q4}");
                if(q1 == Zero and q2 == Zero and q3 == Zero and q4 == Zero)
                {
                    set q00 = q00 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == Zero and q4 == One)
                {
                    set q01 = q01 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == One and q4 == Zero)
                {
                    set q02 = q02 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == One and q4 == One)
                {
                    set q03 = q03 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == Zero and q4 == Zero)
                {
                    set q04 = q04 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == Zero and q4 == One)
                {
                    set q05 = q05 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == Zero)
                {
                    set q06 = q06 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == One and q4 == One)
                {
                    set q07 = q07 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == Zero and q4 == Zero)
                {
                    set q08 = q08 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == Zero and q4 == One)
                {
                    set q09 = q09 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == One and q4 == Zero)
                {
                    set q10 = q10 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == One and q4 == One)
                {
                    set q11 = q11 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == Zero and q4 == Zero)
                {
                    set q12 = q12 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == Zero and q4 == One)
                {
                    set q13 = q13 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == Zero)
                {
                    set q14 = q14 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == One)
                {
                    set q15 = q15 + 1;     
			    }
		    }
            //Message($"{q06}");
            //Message($"{q00},{q01},{q02},{q03},{q04},{q05},{q06},{q07},{q08},{q09},{q10},{q11},{q12},{q13},{q14},{q15}");
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
		}
    }
    operation Oracle0111 () : Unit
    {
        //Message("Hello quantum world!");
        using (q = Qubit[5])
        {
            //Declarations
            mutable q00 = 0;
            mutable q01 = 0;
            mutable q02 = 0;
            mutable q03 = 0;
            mutable q04 = 0;
            mutable q05 = 0;
            mutable q06 = 0;
            mutable q07 = 0;
            mutable q08 = 0;
            mutable q09 = 0;
            mutable q10 = 0;
            mutable q11 = 0;
            mutable q12 = 0;
            mutable q13 = 0;
            mutable q14 = 0;
            mutable q15 = 0;
            for(i in 1..1000)
            {
                //a
                X(q[4]);
                //b
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                //Oracle
                X(q[0]);
                //X(q[1]);
                //X(q[2]);
                //X(q[3]);
                let cq = [q[0],q[1],q[2],q[3]];
                Controlled X(cq,q[4]);
                X(q[0]);
                //X(q[1]);
                //X(q[2]);
                //X(q[3]);
                //c
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                //d
                X(q[0]);
                X(q[1]);
                X(q[2]);
                X(q[3]);
                //e
                H(q[3]);
                let c = [q[0],q[1],q[2]];
                Controlled X(c,q[3]);
                H(q[3]);
                //f 
                X(q[0]);
                X(q[1]);
                X(q[2]);
                X(q[3]);
                //g
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                //let q3 = M(q[2]);
                ResetAll(q);
                //Message($"{q1},{q2},{q3},{q4}");
                if(q1 == Zero and q2 == Zero and q3 == Zero and q4 == Zero)
                {
                    set q00 = q00 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == Zero and q4 == One)
                {
                    set q01 = q01 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == One and q4 == Zero)
                {
                    set q02 = q02 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == One and q4 == One)
                {
                    set q03 = q03 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == Zero and q4 == Zero)
                {
                    set q04 = q04 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == Zero and q4 == One)
                {
                    set q05 = q05 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == Zero)
                {
                    set q06 = q06 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == One and q4 == One)
                {
                    set q07 = q07 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == Zero and q4 == Zero)
                {
                    set q08 = q08 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == Zero and q4 == One)
                {
                    set q09 = q09 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == One and q4 == Zero)
                {
                    set q10 = q10 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == One and q4 == One)
                {
                    set q11 = q11 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == Zero and q4 == Zero)
                {
                    set q12 = q12 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == Zero and q4 == One)
                {
                    set q13 = q13 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == Zero)
                {
                    set q14 = q14 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == One)
                {
                    set q15 = q15 + 1;     
			    }
		    }
            //Message($"{q06}");
            //Message($"{q00},{q01},{q02},{q03},{q04},{q05},{q06},{q07},{q08},{q09},{q10},{q11},{q12},{q13},{q14},{q15}");
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
		}
    }

    operation Oracle1000 () : Unit
    {
        //Message("Hello quantum world!");
        using (q = Qubit[5])
        {
            //Declarations
            mutable q00 = 0;
            mutable q01 = 0;
            mutable q02 = 0;
            mutable q03 = 0;
            mutable q04 = 0;
            mutable q05 = 0;
            mutable q06 = 0;
            mutable q07 = 0;
            mutable q08 = 0;
            mutable q09 = 0;
            mutable q10 = 0;
            mutable q11 = 0;
            mutable q12 = 0;
            mutable q13 = 0;
            mutable q14 = 0;
            mutable q15 = 0;
            for(i in 1..1000)
            {
                //a
                X(q[4]);
                //b
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                //Oracle
                //X(q[0]);
                X(q[1]);
                X(q[2]);
                X(q[3]);
                let cq = [q[0],q[1],q[2],q[3]];
                Controlled X(cq,q[4]);
                //X(q[0]);
                X(q[1]);
                X(q[2]);
                X(q[3]);
                //c
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                //d
                X(q[0]);
                X(q[1]);
                X(q[2]);
                X(q[3]);
                //e
                H(q[3]);
                let c = [q[0],q[1],q[2]];
                Controlled X(c,q[3]);
                H(q[3]);
                //f 
                X(q[0]);
                X(q[1]);
                X(q[2]);
                X(q[3]);
                //g
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                //let q3 = M(q[2]);
                ResetAll(q);
                //Message($"{q1},{q2},{q3},{q4}");
                if(q1 == Zero and q2 == Zero and q3 == Zero and q4 == Zero)
                {
                    set q00 = q00 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == Zero and q4 == One)
                {
                    set q01 = q01 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == One and q4 == Zero)
                {
                    set q02 = q02 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == One and q4 == One)
                {
                    set q03 = q03 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == Zero and q4 == Zero)
                {
                    set q04 = q04 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == Zero and q4 == One)
                {
                    set q05 = q05 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == Zero)
                {
                    set q06 = q06 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == One and q4 == One)
                {
                    set q07 = q07 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == Zero and q4 == Zero)
                {
                    set q08 = q08 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == Zero and q4 == One)
                {
                    set q09 = q09 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == One and q4 == Zero)
                {
                    set q10 = q10 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == One and q4 == One)
                {
                    set q11 = q11 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == Zero and q4 == Zero)
                {
                    set q12 = q12 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == Zero and q4 == One)
                {
                    set q13 = q13 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == Zero)
                {
                    set q14 = q14 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == One)
                {
                    set q15 = q15 + 1;     
			    }
		    }
            //Message($"{q06}");
            //Message($"{q00},{q01},{q02},{q03},{q04},{q05},{q06},{q07},{q08},{q09},{q10},{q11},{q12},{q13},{q14},{q15}");
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
		}
    }

    operation Oracle1001 () : Unit
    {
        //Message("Hello quantum world!");
        using (q = Qubit[5])
        {
            //Declarations
            mutable q00 = 0;
            mutable q01 = 0;
            mutable q02 = 0;
            mutable q03 = 0;
            mutable q04 = 0;
            mutable q05 = 0;
            mutable q06 = 0;
            mutable q07 = 0;
            mutable q08 = 0;
            mutable q09 = 0;
            mutable q10 = 0;
            mutable q11 = 0;
            mutable q12 = 0;
            mutable q13 = 0;
            mutable q14 = 0;
            mutable q15 = 0;
            for(i in 1..1000)
            {
                //a
                X(q[4]);
                //b
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                //Oracle
                //X(q[0]);
                X(q[1]);
                X(q[2]);
                //X(q[3]);
                let cq = [q[0],q[1],q[2],q[3]];
                Controlled X(cq,q[4]);
                //X(q[0]);
                X(q[1]);
                X(q[2]);
                //X(q[3]);
                //c
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                //d
                X(q[0]);
                X(q[1]);
                X(q[2]);
                X(q[3]);
                //e
                H(q[3]);
                let c = [q[0],q[1],q[2]];
                Controlled X(c,q[3]);
                H(q[3]);
                //f 
                X(q[0]);
                X(q[1]);
                X(q[2]);
                X(q[3]);
                //g
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                //let q3 = M(q[2]);
                ResetAll(q);
                //Message($"{q1},{q2},{q3},{q4}");
                if(q1 == Zero and q2 == Zero and q3 == Zero and q4 == Zero)
                {
                    set q00 = q00 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == Zero and q4 == One)
                {
                    set q01 = q01 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == One and q4 == Zero)
                {
                    set q02 = q02 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == One and q4 == One)
                {
                    set q03 = q03 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == Zero and q4 == Zero)
                {
                    set q04 = q04 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == Zero and q4 == One)
                {
                    set q05 = q05 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == Zero)
                {
                    set q06 = q06 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == One and q4 == One)
                {
                    set q07 = q07 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == Zero and q4 == Zero)
                {
                    set q08 = q08 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == Zero and q4 == One)
                {
                    set q09 = q09 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == One and q4 == Zero)
                {
                    set q10 = q10 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == One and q4 == One)
                {
                    set q11 = q11 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == Zero and q4 == Zero)
                {
                    set q12 = q12 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == Zero and q4 == One)
                {
                    set q13 = q13 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == Zero)
                {
                    set q14 = q14 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == One)
                {
                    set q15 = q15 + 1;     
			    }
		    }
            //Message($"{q06}");
            //Message($"{q00},{q01},{q02},{q03},{q04},{q05},{q06},{q07},{q08},{q09},{q10},{q11},{q12},{q13},{q14},{q15}");
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
		}
    }

    operation Oracle1010 () : Unit
    {
        //Message("Hello quantum world!");
        using (q = Qubit[5])
        {
            //Declarations
            mutable q00 = 0;
            mutable q01 = 0;
            mutable q02 = 0;
            mutable q03 = 0;
            mutable q04 = 0;
            mutable q05 = 0;
            mutable q06 = 0;
            mutable q07 = 0;
            mutable q08 = 0;
            mutable q09 = 0;
            mutable q10 = 0;
            mutable q11 = 0;
            mutable q12 = 0;
            mutable q13 = 0;
            mutable q14 = 0;
            mutable q15 = 0;
            for(i in 1..1000)
            {
                //a
                X(q[4]);
                //b
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                //Oracle
                X(q[1]);
                X(q[3]);
                let cq = [q[0],q[1],q[2],q[3]];
                Controlled X(cq,q[4]);
                X(q[1]);
                X(q[3]);
                //c
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                //d
                X(q[0]);
                X(q[1]);
                X(q[2]);
                X(q[3]);
                //e
                H(q[3]);
                let c = [q[0],q[1],q[2]];
                Controlled X(c,q[3]);
                H(q[3]);
                //f 
                X(q[0]);
                X(q[1]);
                X(q[2]);
                X(q[3]);
                //g
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                //let q3 = M(q[2]);
                ResetAll(q);
                //Message($"{q1},{q2},{q3},{q4}");
                if(q1 == Zero and q2 == Zero and q3 == Zero and q4 == Zero)
                {
                    set q00 = q00 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == Zero and q4 == One)
                {
                    set q01 = q01 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == One and q4 == Zero)
                {
                    set q02 = q02 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == One and q4 == One)
                {
                    set q03 = q03 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == Zero and q4 == Zero)
                {
                    set q04 = q04 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == Zero and q4 == One)
                {
                    set q05 = q05 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == Zero)
                {
                    set q06 = q06 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == One and q4 == One)
                {
                    set q07 = q07 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == Zero and q4 == Zero)
                {
                    set q08 = q08 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == Zero and q4 == One)
                {
                    set q09 = q09 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == One and q4 == Zero)
                {
                    set q10 = q10 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == One and q4 == One)
                {
                    set q11 = q11 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == Zero and q4 == Zero)
                {
                    set q12 = q12 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == Zero and q4 == One)
                {
                    set q13 = q13 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == Zero)
                {
                    set q14 = q14 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == One)
                {
                    set q15 = q15 + 1;     
			    }
		    }
            //Message($"{q06}");
            //Message($"{q00},{q01},{q02},{q03},{q04},{q05},{q06},{q07},{q08},{q09},{q10},{q11},{q12},{q13},{q14},{q15}");
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
		}
    }

    operation Oracle1011 () : Unit
    {
        //Message("Hello quantum world!");
        using (q = Qubit[5])
        {
            //Declarations
            mutable q00 = 0;
            mutable q01 = 0;
            mutable q02 = 0;
            mutable q03 = 0;
            mutable q04 = 0;
            mutable q05 = 0;
            mutable q06 = 0;
            mutable q07 = 0;
            mutable q08 = 0;
            mutable q09 = 0;
            mutable q10 = 0;
            mutable q11 = 0;
            mutable q12 = 0;
            mutable q13 = 0;
            mutable q14 = 0;
            mutable q15 = 0;
            for(i in 1..1000)
            {
                //a
                X(q[4]);
                //b
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                //Oracle
                //X(q[0]);
                X(q[1]);
                //X(q[2]);
                //X(q[3]);
                let cq = [q[0],q[1],q[2],q[3]];
                Controlled X(cq,q[4]);
                //X(q[0]);
                X(q[1]);
                //X(q[2]);
                //X(q[3]);
                //c
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                //d
                X(q[0]);
                X(q[1]);
                X(q[2]);
                X(q[3]);
                //e
                H(q[3]);
                let c = [q[0],q[1],q[2]];
                Controlled X(c,q[3]);
                H(q[3]);
                //f 
                X(q[0]);
                X(q[1]);
                X(q[2]);
                X(q[3]);
                //g
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                //let q3 = M(q[2]);
                ResetAll(q);
                //Message($"{q1},{q2},{q3},{q4}");
                if(q1 == Zero and q2 == Zero and q3 == Zero and q4 == Zero)
                {
                    set q00 = q00 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == Zero and q4 == One)
                {
                    set q01 = q01 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == One and q4 == Zero)
                {
                    set q02 = q02 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == One and q4 == One)
                {
                    set q03 = q03 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == Zero and q4 == Zero)
                {
                    set q04 = q04 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == Zero and q4 == One)
                {
                    set q05 = q05 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == Zero)
                {
                    set q06 = q06 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == One and q4 == One)
                {
                    set q07 = q07 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == Zero and q4 == Zero)
                {
                    set q08 = q08 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == Zero and q4 == One)
                {
                    set q09 = q09 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == One and q4 == Zero)
                {
                    set q10 = q10 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == One and q4 == One)
                {
                    set q11 = q11 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == Zero and q4 == Zero)
                {
                    set q12 = q12 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == Zero and q4 == One)
                {
                    set q13 = q13 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == Zero)
                {
                    set q14 = q14 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == One)
                {
                    set q15 = q15 + 1;     
			    }
		    }
            //Message($"{q06}");
            //Message($"{q00},{q01},{q02},{q03},{q04},{q05},{q06},{q07},{q08},{q09},{q10},{q11},{q12},{q13},{q14},{q15}");
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
		}
    }

    operation Oracle1100 () : Unit
    {
        //Message("Hello quantum world!");
        using (q = Qubit[5])
        {
            //Declarations
            mutable q00 = 0;
            mutable q01 = 0;
            mutable q02 = 0;
            mutable q03 = 0;
            mutable q04 = 0;
            mutable q05 = 0;
            mutable q06 = 0;
            mutable q07 = 0;
            mutable q08 = 0;
            mutable q09 = 0;
            mutable q10 = 0;
            mutable q11 = 0;
            mutable q12 = 0;
            mutable q13 = 0;
            mutable q14 = 0;
            mutable q15 = 0;
            for(i in 1..1000)
            {
                //a
                X(q[4]);
                //b
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                //Oracle
                //X(q[0]);
                //X(q[1]);
                X(q[2]);
                X(q[3]);
                let cq = [q[0],q[1],q[2],q[3]];
                Controlled X(cq,q[4]);
                //X(q[0]);
                //X(q[1]);
                X(q[2]);
                X(q[3]);
                //c
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                //d
                X(q[0]);
                X(q[1]);
                X(q[2]);
                X(q[3]);
                //e
                H(q[3]);
                let c = [q[0],q[1],q[2]];
                Controlled X(c,q[3]);
                H(q[3]);
                //f 
                X(q[0]);
                X(q[1]);
                X(q[2]);
                X(q[3]);
                //g
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                //let q3 = M(q[2]);
                ResetAll(q);
                //Message($"{q1},{q2},{q3},{q4}");
                if(q1 == Zero and q2 == Zero and q3 == Zero and q4 == Zero)
                {
                    set q00 = q00 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == Zero and q4 == One)
                {
                    set q01 = q01 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == One and q4 == Zero)
                {
                    set q02 = q02 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == One and q4 == One)
                {
                    set q03 = q03 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == Zero and q4 == Zero)
                {
                    set q04 = q04 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == Zero and q4 == One)
                {
                    set q05 = q05 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == Zero)
                {
                    set q06 = q06 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == One and q4 == One)
                {
                    set q07 = q07 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == Zero and q4 == Zero)
                {
                    set q08 = q08 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == Zero and q4 == One)
                {
                    set q09 = q09 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == One and q4 == Zero)
                {
                    set q10 = q10 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == One and q4 == One)
                {
                    set q11 = q11 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == Zero and q4 == Zero)
                {
                    set q12 = q12 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == Zero and q4 == One)
                {
                    set q13 = q13 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == Zero)
                {
                    set q14 = q14 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == One)
                {
                    set q15 = q15 + 1;     
			    }
		    }
            //Message($"{q06}");
            //Message($"{q00},{q01},{q02},{q03},{q04},{q05},{q06},{q07},{q08},{q09},{q10},{q11},{q12},{q13},{q14},{q15}");
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
		}
    }

    operation Oracle1101 () : Unit
    {
        //Message("Hello quantum world!");
        using (q = Qubit[5])
        {
            //Declarations
            mutable q00 = 0;
            mutable q01 = 0;
            mutable q02 = 0;
            mutable q03 = 0;
            mutable q04 = 0;
            mutable q05 = 0;
            mutable q06 = 0;
            mutable q07 = 0;
            mutable q08 = 0;
            mutable q09 = 0;
            mutable q10 = 0;
            mutable q11 = 0;
            mutable q12 = 0;
            mutable q13 = 0;
            mutable q14 = 0;
            mutable q15 = 0;
            for(i in 1..1000)
            {
                //a
                X(q[4]);
                //b
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                //Oracle
                //X(q[0]);
                //X(q[1]);
                X(q[2]);
                //X(q[3]);
                let cq = [q[0],q[1],q[2],q[3]];
                Controlled X(cq,q[4]);
                //X(q[0]);
                //X(q[1]);
                X(q[2]);
                //X(q[3]);
                //c
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                //d
                X(q[0]);
                X(q[1]);
                X(q[2]);
                X(q[3]);
                //e
                H(q[3]);
                let c = [q[0],q[1],q[2]];
                Controlled X(c,q[3]);
                H(q[3]);
                //f 
                X(q[0]);
                X(q[1]);
                X(q[2]);
                X(q[3]);
                //g
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                //let q3 = M(q[2]);
                ResetAll(q);
                //Message($"{q1},{q2},{q3},{q4}");
                if(q1 == Zero and q2 == Zero and q3 == Zero and q4 == Zero)
                {
                    set q00 = q00 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == Zero and q4 == One)
                {
                    set q01 = q01 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == One and q4 == Zero)
                {
                    set q02 = q02 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == One and q4 == One)
                {
                    set q03 = q03 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == Zero and q4 == Zero)
                {
                    set q04 = q04 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == Zero and q4 == One)
                {
                    set q05 = q05 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == Zero)
                {
                    set q06 = q06 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == One and q4 == One)
                {
                    set q07 = q07 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == Zero and q4 == Zero)
                {
                    set q08 = q08 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == Zero and q4 == One)
                {
                    set q09 = q09 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == One and q4 == Zero)
                {
                    set q10 = q10 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == One and q4 == One)
                {
                    set q11 = q11 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == Zero and q4 == Zero)
                {
                    set q12 = q12 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == Zero and q4 == One)
                {
                    set q13 = q13 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == Zero)
                {
                    set q14 = q14 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == One)
                {
                    set q15 = q15 + 1;     
			    }
		    }
            //Message($"{q06}");
            //Message($"{q00},{q01},{q02},{q03},{q04},{q05},{q06},{q07},{q08},{q09},{q10},{q11},{q12},{q13},{q14},{q15}");
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
		}
    }

    operation Oracle1110 () : Unit
    {
        //Message("Hello quantum world!");
        using (q = Qubit[5])
        {
            //Declarations
            mutable q00 = 0;
            mutable q01 = 0;
            mutable q02 = 0;
            mutable q03 = 0;
            mutable q04 = 0;
            mutable q05 = 0;
            mutable q06 = 0;
            mutable q07 = 0;
            mutable q08 = 0;
            mutable q09 = 0;
            mutable q10 = 0;
            mutable q11 = 0;
            mutable q12 = 0;
            mutable q13 = 0;
            mutable q14 = 0;
            mutable q15 = 0;
            for(i in 1..1000)
            {
                //a
                X(q[4]);
                //b
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                //Oracle
                //X(q[0]);
                //X(q[1]);
                //X(q[2]);
                X(q[3]);
                let cq = [q[0],q[1],q[2],q[3]];
                Controlled X(cq,q[4]);
                //X(q[0]);
                //X(q[1]);
                //X(q[2]);
                X(q[3]);
                //c
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                //d
                X(q[0]);
                X(q[1]);
                X(q[2]);
                X(q[3]);
                //e
                H(q[3]);
                let c = [q[0],q[1],q[2]];
                Controlled X(c,q[3]);
                H(q[3]);
                //f 
                X(q[0]);
                X(q[1]);
                X(q[2]);
                X(q[3]);
                //g
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                //let q3 = M(q[2]);
                ResetAll(q);
                //Message($"{q1},{q2},{q3},{q4}");
                if(q1 == Zero and q2 == Zero and q3 == Zero and q4 == Zero)
                {
                    set q00 = q00 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == Zero and q4 == One)
                {
                    set q01 = q01 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == One and q4 == Zero)
                {
                    set q02 = q02 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == One and q4 == One)
                {
                    set q03 = q03 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == Zero and q4 == Zero)
                {
                    set q04 = q04 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == Zero and q4 == One)
                {
                    set q05 = q05 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == Zero)
                {
                    set q06 = q06 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == One and q4 == One)
                {
                    set q07 = q07 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == Zero and q4 == Zero)
                {
                    set q08 = q08 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == Zero and q4 == One)
                {
                    set q09 = q09 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == One and q4 == Zero)
                {
                    set q10 = q10 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == One and q4 == One)
                {
                    set q11 = q11 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == Zero and q4 == Zero)
                {
                    set q12 = q12 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == Zero and q4 == One)
                {
                    set q13 = q13 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == Zero)
                {
                    set q14 = q14 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == One)
                {
                    set q15 = q15 + 1;     
			    }
		    }
            //Message($"{q06}");
            //Message($"{q00},{q01},{q02},{q03},{q04},{q05},{q06},{q07},{q08},{q09},{q10},{q11},{q12},{q13},{q14},{q15}");
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
		}
    }

    operation Oracle1111 () : Unit
    {
        //Message("Hello quantum world!");
        using (q = Qubit[5])
        {
            //Declarations
            mutable q00 = 0;
            mutable q01 = 0;
            mutable q02 = 0;
            mutable q03 = 0;
            mutable q04 = 0;
            mutable q05 = 0;
            mutable q06 = 0;
            mutable q07 = 0;
            mutable q08 = 0;
            mutable q09 = 0;
            mutable q10 = 0;
            mutable q11 = 0;
            mutable q12 = 0;
            mutable q13 = 0;
            mutable q14 = 0;
            mutable q15 = 0;
            for(i in 1..1000)
            {
                //a
                X(q[4]);
                //b
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                //Oracle
                //X(q[0]);
                //X(q[1]);
                //X(q[2]);
                //X(q[3]);
                let cq = [q[0],q[1],q[2],q[3]];
                Controlled X(cq,q[4]);
                //X(q[0]);
                //X(q[1]);
                //X(q[2]);
                //X(q[3]);
                //c
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                //d
                X(q[0]);
                X(q[1]);
                X(q[2]);
                X(q[3]);
                //e
                H(q[3]);
                let c = [q[0],q[1],q[2]];
                Controlled X(c,q[3]);
                H(q[3]);
                //f 
                X(q[0]);
                X(q[1]);
                X(q[2]);
                X(q[3]);
                //g
                H(q[0]);
                H(q[1]);
                H(q[2]);
                H(q[3]);
                H(q[4]);
                let q1 = M(q[0]);
                let q2 = M(q[1]);
                let q3 = M(q[2]);
                let q4 = M(q[3]);
                //let q3 = M(q[2]);
                ResetAll(q);
                //Message($"{q1},{q2},{q3},{q4}");
                if(q1 == Zero and q2 == Zero and q3 == Zero and q4 == Zero)
                {
                    set q00 = q00 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == Zero and q4 == One)
                {
                    set q01 = q01 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == One and q4 == Zero)
                {
                    set q02 = q02 + 1;     
			    }
                if(q1 == Zero and q2 == Zero and q3 == One and q4 == One)
                {
                    set q03 = q03 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == Zero and q4 == Zero)
                {
                    set q04 = q04 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == Zero and q4 == One)
                {
                    set q05 = q05 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == Zero)
                {
                    set q06 = q06 + 1;     
			    }
                if(q1 == Zero and q2 == One and q3 == One and q4 == One)
                {
                    set q07 = q07 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == Zero and q4 == Zero)
                {
                    set q08 = q08 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == Zero and q4 == One)
                {
                    set q09 = q09 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == One and q4 == Zero)
                {
                    set q10 = q10 + 1;     
			    }
                if(q1 == One and q2 == Zero and q3 == One and q4 == One)
                {
                    set q11 = q11 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == Zero and q4 == Zero)
                {
                    set q12 = q12 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == Zero and q4 == One)
                {
                    set q13 = q13 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == Zero)
                {
                    set q14 = q14 + 1;     
			    }
                if(q1 == One and q2 == One and q3 == One and q4 == One)
                {
                    set q15 = q15 + 1;     
			    }
		    }
            //Message($"{q06}");
            //Message($"{q00},{q01},{q02},{q03},{q04},{q05},{q06},{q07},{q08},{q09},{q10},{q11},{q12},{q13},{q14},{q15}");
            Message($"State 00 -> {q00}");
            Message($"State 01 -> {q01}");
            Message($"State 02 -> {q02}");
            Message($"State 03 -> {q03}");
            Message($"State 04 -> {q04}");
            Message($"State 05 -> {q05}");
            Message($"State 06 -> {q06}");
            Message($"State 07 -> {q07}");
            Message($"State 08 -> {q08}");
            Message($"State 09 -> {q09}");
            Message($"State 10 -> {q10}");
            Message($"State 11 -> {q11}");
            Message($"State 12 -> {q12}");
            Message($"State 13 -> {q13}");
            Message($"State 14 -> {q14}");
            Message($"State 15 -> {q15}");
		}
    }
}