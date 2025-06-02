Q1:
SELECT o_custkey, count(*) FROM orders GROUP BY o_custkey;

Q2:
SELECT o_custkey, count(*), SUM(o_orderkey), AVG(o_orderkey)
FROM orders
GROUP BY o_custkey;

Q3:
SELECT o_custkey, count(*), SUM(o_orderkey), AVG(o_orderkey), MIN(o_orderkey), MAX(o_orderkey)
FROM orders
GROUP BY o_custkey;

Q4:
SELECT c_custkey, count(*) FROM customer GROUP BY c_custkey;

Q5:
SELECT c_custkey, count(*), SUM(c_nationkey), AVG(c_nationkey)
FROM customer
GROUP BY c_custkey;

Q6:
SELECT c_custkey, count(*), SUM(c_nationkey), AVG(c_nationkey), MIN(c_nationkey), MAX(c_nationkey)
FROM customer
GROUP BY c_custkey;

Q7:
SELECT o_orderpriority AS k1, COUNT(*) AS cnt
FROM orders
GROUP BY o_orderpriority;

Q8:
SELECT p_type AS k1, COUNT(*) AS cnt
FROM part
GROUP BY p_type;

Q9:
SELECT o_orderkey AS k1, SUM(o_shippriority) AS s
FROM orders
GROUP BY o_orderkey;

Q10:
SELECT o_orderkey AS k1,
    o_custkey AS k2,
    o_shippriority AS k3,
    SUM(o_orderkey), MIN(o_orderkey), MAX(o_orderkey),
    SUM(o_shippriority), MIN(o_shippriority), MAX(o_shippriority)
FROM orders
GROUP BY o_orderkey, o_custkey, o_shippriority;

Q11:
SELECT ps_partkey AS k1,
    COUNT(*),
    SUM(ps_availqty), MIN(ps_availqty), MAX(ps_availqty), AVG(ps_availqty)
FROM partsupp
GROUP BY ps_partkey;

Q12:
SELECT p_mfgr AS k1,
    COUNT(*),
    SUM(p_size), MIN(p_size), MAX(p_size), AVG(p_size)
FROM part
GROUP BY p_mfgr;

Q13:
SELECT o_custkey AS k1,
    o_orderkey AS k2,
    COUNT(*),
    SUM(o_shippriority), MIN(o_shippriority), MAX(o_shippriority), AVG(o_shippriority)
FROM orders
GROUP BY o_custkey, o_orderkey;

Q14:
SELECT p_mfgr AS k1,
    p_size AS k2,
    COUNT(*),
    SUM(p_partkey), MIN(p_partkey), MAX(p_partkey), AVG(p_partkey)
FROM part
GROUP BY p_mfgr, p_size;

Q15:
SELECT c_mktsegment AS k1,
    c_phone AS k2,
    c_nationkey AS k3,
    COUNT(*),
    SUM(c_custkey), MIN(c_custkey), MAX(c_custkey),
    SUM(c_nationkey), MIN(c_nationkey), MAX(c_nationkey),
    SUM(c_custkey), MIN(c_custkey), MAX(c_custkey)
FROM customer
GROUP BY c_mktsegment, c_phone, c_nationkey;

Q16:
SELECT l_orderkey AS k1,
    l_partkey AS k2,
    l_suppkey AS k3,
    COUNT(*) AS cnt
FROM lineitem
GROUP BY l_orderkey, l_partkey, l_suppkey;

Q17:
SELECT p_name AS k1,
    COUNT(*),
    SUM(p_retailprice), MIN(p_retailprice), MAX(p_retailprice), AVG(p_retailprice)
FROM part
GROUP BY p_name;

Q18:
SELECT s_name AS k1,
    COUNT(*) AS cnt
FROM supplier
GROUP BY s_name;

Q19:
SELECT c_comment AS k1,
    c_custkey AS k2,
    COUNT(*),
    SUM(c_acctbal), MIN(c_acctbal), MAX(c_acctbal)
FROM customer
GROUP BY c_comment, c_custkey;

Q20:
SELECT l_comment AS k1,
    COUNT(*) AS cnt
FROM lineitem
GROUP BY l_comment;

Q21:
SELECT o_comment AS k1,
    o_clerk AS k2,
    SUM(o_totalprice), MIN(o_totalprice), MAX(o_totalprice),
    SUM(o_orderkey), MIN(o_orderkey), MAX(o_orderkey)
FROM orders
GROUP BY o_comment, o_clerk;

Q22:
SELECT ss_item_sk AS k1,
    COUNT(*),
    SUM(ss_quantity), MIN(ss_quantity), MAX(ss_quantity), AVG(ss_quantity)
FROM store_sales
GROUP BY ss_item_sk;

Q23:
SELECT i_brand AS k1,
    COUNT(*),
    SUM(i_item_sk), MIN(i_item_sk), MAX(i_item_sk), AVG(i_item_sk)
FROM item
GROUP BY i_brand;

Q24:
SELECT cs_bill_customer_sk AS k1,
    cs_item_sk AS k2,
    COUNT(*),
    SUM(cs_quantity), MIN(cs_quantity), MAX(cs_quantity), AVG(cs_quantity)
FROM catalog_sales
GROUP BY cs_bill_customer_sk, cs_item_sk;

Q25:
SELECT c_first_name AS k1,
    c_customer_sk AS k2,
    COUNT(*),
    SUM(c_current_cdemo_sk), MIN(c_current_cdemo_sk), MAX(c_current_cdemo_sk),
    AVG(c_current_cdemo_sk)
FROM customer
GROUP BY c_first_name, c_customer_sk;

Q26:
SELECT c_first_name AS k1,
    c_last_name AS k2,
    c_customer_sk AS k3,
    COUNT(*),
    SUM(c_current_cdemo_sk), MIN(c_current_cdemo_sk), MAX(c_current_cdemo_sk),
    SUM(c_current_hdemo_sk), MIN(c_current_hdemo_sk), MAX(c_current_hdemo_sk),
    SUM(c_current_addr_sk), MIN(c_current_addr_sk), MAX(c_current_addr_sk)
FROM customer
GROUP BY c_first_name, c_last_name, c_customer_sk;

Q27:
SELECT ws_order_number AS k1,
    ws_item_sk AS k2,
    ws_warehouse_sk AS k3,
    COUNT(*) AS cnt
FROM web_sales
GROUP BY ws_order_number, ws_item_sk, ws_warehouse_sk;

Q28:
SELECT ws_ship_mode_sk AS k1,
    COUNT(*) AS cnt
FROM web_sales
GROUP BY ws_ship_mode_sk;

Q29:
SELECT i_item_desc AS k1,
    COUNT(*) AS cnt
FROM item
GROUP BY i_item_desc;

Q30:
SELECT cs_item_sk AS k1,
    SUM(cs_quantity) AS s
FROM catalog_sales
GROUP BY cs_item_sk;

Q31:
SELECT ws_order_number AS k1,
    ws_item_sk AS k2,
    ws_warehouse_sk AS k3,
    SUM(ws_quantity), MIN(ws_quantity), MAX(ws_quantity),
    SUM(ws_web_page_sk), MIN(ws_web_page_sk), MAX(ws_web_page_sk)
FROM web_sales
GROUP BY ws_order_number, ws_item_sk, ws_warehouse_sk;
