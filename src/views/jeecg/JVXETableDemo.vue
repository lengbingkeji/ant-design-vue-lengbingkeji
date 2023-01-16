<template>
  <a-card :bordered="false">

    <a-tabs tabPosition="left">
      <!--
        <a-tab-pane tab="基础示例" key="1" forceRender>
          <j-vxe-demo1/>
        </a-tab-pane>
      -->
      <a-tab-pane key="1" forceRender>
        <template #tab>
          <span>
<!--            <picture-outlined />-->
            <a-icon type="user" />基础示例
          </span>
        </template>
        <j-vxe-demo1/>
      </a-tab-pane>

      <a-tab-pane tab="高级示例" key="2" forceRender>
        <j-vxe-demo2/>
      </a-tab-pane> 
      
      <a-tab-pane tab="联动示例" key="3" forceRender>
        <j-vxe-demo3/>
      </a-tab-pane>

    </a-tabs>
  </a-card>
</template>

<script>
  import JVxeDemo1 from '@views/jeecg/JVxeDemo/JVxeDemo1'
  import JVxeDemo2 from '@views/jeecg/JVxeDemo/JVxeDemo2'
  import JVxeDemo3 from '@views/jeecg/JVxeDemo/JVxeDemo3'
  import Template1 from './JVxeDemo/layout-demo/Template1'

  export default {
    name: 'JVXETableDemo',
    components: { Template1, JVxeDemo2, JVxeDemo1,JVxeDemo3},
    data() {
      return {}
    },
    methods: {},
  }
</script>

<style scoped>

</style>