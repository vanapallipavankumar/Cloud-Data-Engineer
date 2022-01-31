import airflow
from airflow import DAG
from airflow.operators.bash_operator import BashOperator
from datetime import timedelta

default_args = {
    'start_date': airflow.utils.dates.days_ago(0),
    'retries': 1,
    'retry_delay': timedelta(minutes=5)
}

dag = DAG(
    'airflow_monitoring',
    default_args=default_args,
    description='liveness monitoring dag',
    schedule_interval=None,
    dagrun_timeout=timedelta(minutes=20))

# priority_weight has type int in Airflow DB, uses the maximum.
t1 = BashOperator(
    task_id='fahima',
    bash_command='gsutil cp gs://purchase_date123/Repurchase_Product.csv gs://pavan_kumar157/',
    dag=dag
)
t2 = BashOperator(
    task_id='echo',
    bash_command='bq mk practise',
    dag=dag
)
t3 = BashOperator(
    task_id='table',
    bash_command='bq mk -t practise.practise_stage',
    dag=dag
)
t4 = BashOperator(
    task_id='loaddata',
    bash_command='bq load --source_format=CSV --skip_leading_rows=1 --autodetect practise.practise_stage "gs://pavan_kumar157/Repurchase_Product.csv"',
    dag=dag
)
t1>>t2>>t3>>t4