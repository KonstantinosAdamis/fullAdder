entity tb_full_adder is
end entity tb_full_adder;

architecture sim of tb_full_adder is
    -- Signals to connect to the full adder (using bit type)
    signal a, b, cin: bit := '0';
    signal sum, cout: bit;
begin
    -- Instantiate the full adder unit
    uut: entity work.full_adder_unit
        port map (
            a => a,
            b => b,
            cin => cin,
            sum => sum,
            cout => cout
        );

    -- Process to simulate different inputs and display results
    process
    begin
        -- Test case 1: a = 0, b = 0, cin = 0
        a <= '0';
        b <= '0';
        cin <= '0';
        wait for 10 ns; -- Wait for outputs to stabilize
        report "Test case 1: a = 0, b = 0, cin = 0 -> sum = " & bit'image(sum) &
               ", cout = " & bit'image(cout);

        -- Test case 2: a = 0, b = 0, cin = 1
        a <= '0';
        b <= '0';
        cin <= '1';
        wait for 10 ns;
        report "Test case 2: a = 0, b = 0, cin = 1 -> sum = " & bit'image(sum) &
               ", cout = " & bit'image(cout);

        -- Test case 3: a = 0, b = 1, cin = 0
        a <= '0';
        b <= '1';
        cin <= '0';
        wait for 10 ns;
        report "Test case 3: a = 0, b = 1, cin = 0 -> sum = " & bit'image(sum) &
               ", cout = " & bit'image(cout);

        -- Test case 4: a = 0, b = 1, cin = 1
        a <= '0';
        b <= '1';
        cin <= '1';
        wait for 10 ns;
        report "Test case 4: a = 0, b = 1, cin = 1 -> sum = " & bit'image(sum) &
               ", cout = " & bit'image(cout);

        -- Test case 5: a = 1, b = 0, cin = 0
        a <= '1';
        b <= '0';
        cin <= '0';
        wait for 10 ns;
        report "Test case 5: a = 1, b = 0, cin = 0 -> sum = " & bit'image(sum) &
               ", cout = " & bit'image(cout);
			   
		-- Test case 6: a = 1, b = 0, cin = 1
        a <= '1';
        b <= '0';
        cin <= '1';
        wait for 10 ns;
        report "Test case 6: a = 1, b = 0, cin = 1 -> sum = " & bit'image(sum) &
               ", cout = " & bit'image(cout);
			   
		-- Test case 7: a = 1, b = 1, cin = 0
        a <= '1';
        b <= '1';
        cin <= '0';
        wait for 10 ns;
        report "Test case 7: a = 1, b = 1, cin = 0 -> sum = " & bit'image(sum) &
               ", cout = " & bit'image(cout);
			   
		-- Test case 8: a = 1, b = 1, cin = 1
        a <= '1';
        b <= '1';
        cin <= '1';
        wait for 10 ns;
        report "Test case 8: a = 1, b = 1, cin = 1 -> sum = " & bit'image(sum) &
               ", cout = " & bit'image(cout);

        -- End of simulation
        wait;
    end process;
end architecture sim;