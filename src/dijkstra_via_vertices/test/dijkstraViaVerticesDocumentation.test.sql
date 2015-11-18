
\echo --Examples for queries marked as ``directed`` with ``cost`` and ``reverse_cost`` columns
\echo ----------------------------------------------------------------------------------------

        SELECT * FROM pgr_dijkstraViaVertices(
                        'SELECT id, source, target, cost, reverse_cost FROM edge_table',
                        array[1, 3, 11]
                );
\echo ------

        SELECT * FROM pgr_dijkstraViaVertices(
                  'SELECT id, source, target, cost, reverse_cost FROM edge_table',
                  array[1, 3, 11],
                  true
                );



\echo -- Examples for queries marked as ``undirected`` with ``cost`` and ``reverse_cost`` columns
\echo ----------------------------------------------------------------------------------------


        SELECT * FROM pgr_dijkstraViaVertices(
                        'SELECT id, source, target, cost, reverse_cost FROM edge_table',
                        array[1, 3, 11],
			 false
                );



\echo -- Examples for queries marked as ``directed`` with ``cost`` column
\echo ----------------------------------------------------------------------------------------

        SELECT * FROM pgr_dijkstraViaVertices(
                        'SELECT id, source, target, cost FROM edge_table',
                        array[1, 3, 11]
                );
\echo ------

        SELECT * FROM pgr_dijkstraViaVertices(
                        'SELECT id, source, target, cost FROM edge_table',
                        array[1, 3, 11],
			 true
                );




\echo -- Examples for queries marked as ``undirected`` with ``cost`` column
\echo ----------------------------------------------------------------------------------------

        SELECT * FROM pgr_dijkstraViaVertices(
                        'SELECT id, source, target, cost FROM edge_table',
                        array[1, 3, 11],
                        false
		);

\echo -- Equvalences between pgr_dijkstraViaVertices and pgr_dijkstra
\echo ------------------------------------------------------------

        SELECT * FROM pgr_dijkstra(
               'SELECT id, source, target, cost, reverse_cost FROM edge_table',
                array[1], array[3]
        );
\echo ------
        SELECT * FROM pgr_dijkstra(
               'SELECT id, source, target, cost, reverse_cost FROM edge_table',
                array[3], array[11]
        );
\echo ------
        SELECT * FROM pgr_dijkstra(
               'SELECT id, source, target, cost, reverse_cost FROM edge_table',
                array[11], array[1]
        );
\echo ------
        SELECT * FROM pgr_dijkstraViaVertices(
                        'SELECT id, source, target, cost FROM edge_table',
                        array[1, 3, 11, 1],
                        false
        );

