namespace Quantum.QSharpLibrary1
{
    open Microsoft.Quantum.Primitive;
    open Microsoft.Quantum.Canon;

    operation NOT (input: Bool) : (Bool)
    {
        body
        {
            return X(input);
        }
    }

	operation OR (input1: Bool, input2: Bool) : (Bool)
	{
		body
		{
			Qubit result;
			Set (One, result);
			CNOT (result, input1);
			CNOT (result, input2);
			CCNOT(input1, input2, result);
			return result;
		}
	}

	operation AND (input1: Bool, input2: Bool) : (Bool)
	{
		body
		{
			Qubit result;
			Set (Zero, result);
			CCNOT (input1, input2, result);
			return result;
		}
	}

	operation NAND (input1: Bool, input2: Bool) : (Bool)
	{
		body
		{
			Qubit result;
			Set (AND(input1,input2),result);
			Set (NOT(result),result);
			return result;
		}
	}

	operation XOR (input1: Bool, input2 Bool) : (Bool)
	{
		body
		{
			
		}
	}
}
