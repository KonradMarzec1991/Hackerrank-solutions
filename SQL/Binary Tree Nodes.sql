SELECT
    bst.N,
    CASE
        WHEN bst.P IS NULL
            THEN 'Root'
        WHEN bst.P IS NOT NULL
                 AND EXISTS (SELECT B.P FROM BST B WHERE B.P = bst.N)
            THEN 'Inner'
        ELSE 'Leaf'
    END
FROM BST bst
ORDER BY bst.N;