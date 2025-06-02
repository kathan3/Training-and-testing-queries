-- Q1
SELECT a.o_orderkey, a.o_custkey, b.l_orderkey, b.l_suppkey
FROM orders AS a
JOIN lineitem AS b ON a.o_orderkey = b.l_orderkey;

-- Q2
SELECT a.l_orderkey, a.l_suppkey, b.o_orderkey, b.o_custkey
FROM lineitem AS a
JOIN orders AS b ON a.l_orderkey = b.o_orderkey;

-- Q3
SELECT a.n_nationkey, a.n_regionkey, b.c_nationkey, b.c_custkey
FROM nation AS a
JOIN customer AS b ON a.n_nationkey = b.c_nationkey;

-- Q4
SELECT a.c_nationkey, a.c_custkey, b.n_nationkey, b.n_regionkey
FROM customer AS a
JOIN nation AS b ON a.c_nationkey = b.n_nationkey;

-- Q5
SELECT a.p_partkey, a.p_size, b.ps_partkey, b.ps_suppkey
FROM part AS a
JOIN partsupp AS b ON a.p_partkey = b.ps_partkey;

-- Q6
SELECT a.ps_partkey, a.ps_suppkey, b.p_partkey, b.p_size
FROM partsupp AS a
JOIN part AS b ON a.ps_partkey = b.p_partkey;

-- Q7
SELECT a.s_suppkey, a.s_nationkey, b.ps_suppkey, b.ps_partkey
FROM supplier AS a
JOIN partsupp AS b ON a.s_suppkey = b.ps_suppkey;

-- Q8
SELECT a.ps_suppkey, a.ps_partkey, b.s_suppkey, b.s_nationkey
FROM partsupp AS a
JOIN supplier AS b ON a.ps_suppkey = b.s_suppkey;

-- Q9
SELECT a.c_custkey, a.c_nationkey, b.o_custkey, b.o_orderkey
FROM customer AS a
JOIN orders AS b ON a.c_custkey = b.o_custkey;

-- Q10
SELECT a.o_custkey, a.o_orderkey, b.c_custkey, b.c_nationkey
FROM orders AS a
JOIN customer AS b ON a.o_custkey = b.c_custkey;

-- Q11
SELECT a.s_suppkey AS k, b.ps_partkey, a.s_name
FROM supplier AS a
JOIN partsupp AS b ON a.s_suppkey = b.ps_suppkey;

-- Q12
SELECT a.ps_suppkey AS k, a.ps_partkey AS part_a, b.ps_partkey AS part_b
FROM partsupp AS a
JOIN partsupp AS b ON a.ps_suppkey = b.ps_suppkey;

-- Q13
SELECT a.c_custkey AS k, b.o_orderkey, a.c_name
FROM customer AS a
JOIN orders AS b ON a.c_custkey = b.o_custkey;

-- Q14
SELECT a.o_custkey AS k, a.o_orderkey AS ord_a, b.o_orderkey AS ord_b
FROM orders AS a
JOIN orders AS b ON a.o_custkey = b.o_custkey;

-- Q15
SELECT a.p_type AS k, a.p_partkey AS part_a, b.p_partkey AS part_b
FROM part AS a
JOIN part AS b ON a.p_type = b.p_type;

-- Q16
SELECT a.wp_creation_date_sk, a.wp_image_count,
    b.d_date_sk, b.d_month_seq
FROM web_page AS a
JOIN date_dim AS b ON a.wp_creation_date_sk = b.d_date_sk;

-- Q17
SELECT a.c_current_addr_sk, a.c_current_cdemo_sk,
    b.ca_address_sk, b.ca_gmt_offset
FROM customer AS a
JOIN customer_address AS b ON a.c_current_addr_sk = b.ca_address_sk;

-- Q18
SELECT a.c_current_cdemo_sk, a.c_current_addr_sk,
    b.cd_demo_sk, b.cd_purchase_estimate
FROM customer AS a
JOIN customer_demographics AS b ON a.c_current_cdemo_sk = b.cd_demo_sk;
