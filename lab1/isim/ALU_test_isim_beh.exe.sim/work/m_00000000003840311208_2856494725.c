/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xc3576ebc */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/Archc/lab1/ALU-test.v";
static unsigned int ng1[] = {4294901760U, 0U};
static unsigned int ng2[] = {65535U, 0U};
static int ng3[] = {0, 0};
static int ng4[] = {1, 0};



static void Initial_47_0(char *t0)
{
    char t7[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;

LAB0:    t1 = (t0 + 3008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(47, ng0);

LAB4:    xsi_set_current_line(49, ng0);

LAB5:    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(52, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 2816);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB6;

LAB1:    return;
LAB6:    xsi_set_current_line(56, ng0);
    t3 = (t0 + 2088);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = ((char*)((ng4)));
    memset(t7, 0, 8);
    xsi_vlog_unsigned_add(t7, 32, t5, 3, t6, 32);
    t8 = (t0 + 2088);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 3);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 2816);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(58, ng0);
    t3 = (t0 + 2088);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = ((char*)((ng4)));
    memset(t7, 0, 8);
    xsi_vlog_unsigned_add(t7, 32, t5, 3, t6, 32);
    t8 = (t0 + 2088);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 3);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2816);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB8:    xsi_set_current_line(60, ng0);
    t3 = (t0 + 2088);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = ((char*)((ng4)));
    memset(t7, 0, 8);
    xsi_vlog_unsigned_add(t7, 32, t5, 3, t6, 32);
    t8 = (t0 + 2088);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 3);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 2816);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB9;
    goto LAB1;

LAB9:    xsi_set_current_line(62, ng0);
    t3 = (t0 + 2088);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = ((char*)((ng4)));
    memset(t7, 0, 8);
    xsi_vlog_unsigned_add(t7, 32, t5, 3, t6, 32);
    t8 = (t0 + 2088);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 3);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 2816);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(64, ng0);
    t3 = (t0 + 2088);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = ((char*)((ng4)));
    memset(t7, 0, 8);
    xsi_vlog_unsigned_add(t7, 32, t5, 3, t6, 32);
    t8 = (t0 + 2088);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 3);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 2816);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB11:    xsi_set_current_line(66, ng0);
    t3 = (t0 + 2088);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = ((char*)((ng4)));
    memset(t7, 0, 8);
    xsi_vlog_unsigned_add(t7, 32, t5, 3, t6, 32);
    t8 = (t0 + 2088);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 3);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 2816);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB12;
    goto LAB1;

LAB12:    xsi_set_current_line(68, ng0);
    t3 = (t0 + 2088);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = ((char*)((ng4)));
    memset(t7, 0, 8);
    xsi_vlog_unsigned_add(t7, 32, t5, 3, t6, 32);
    t8 = (t0 + 2088);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 3);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 2816);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB13;
    goto LAB1;

LAB13:    xsi_set_current_line(70, ng0);
    t3 = (t0 + 2088);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = ((char*)((ng4)));
    memset(t7, 0, 8);
    xsi_vlog_unsigned_add(t7, 32, t5, 3, t6, 32);
    t8 = (t0 + 2088);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 3);
    goto LAB1;

}


extern void work_m_00000000003840311208_2856494725_init()
{
	static char *pe[] = {(void *)Initial_47_0};
	xsi_register_didat("work_m_00000000003840311208_2856494725", "isim/ALU_test_isim_beh.exe.sim/work/m_00000000003840311208_2856494725.didat");
	xsi_register_executes(pe);
}
