import sys

def parse_laddr(laddr):
    """ Разбирает лог.адрес на компоненты 
    """
    pml4 = (laddr >> 39) & 0x1ff        # младшие 9 бит (маске 0x1ff = 0b111111111) у сдвинутого вправо на 39 бит значения
    dir_ptr = (laddr >> 30) & 0x1ff     # ... на 39 бит значения
    directory = (laddr >> 21) & 0x1ff   # ...
    table = (laddr >> 12) & 0x1ff       # ...
    offset = laddr & 0xfff              # И по маске 0xfff (12 единиц или 0b111111111111), т.е. результат - младшие 12 бит

    return (pml4, dir_ptr, directory, table, offset)

def get_paddr(laddr, mem_struct: dict, cr3, fout=sys.stdout):
    """ Получает значения из "памяти" по таблицам компонентов 
    логического адреса.
    В задаче не задействуется случай с размером страницы, отличным от 4 Кб,
    поэтому проверку бита PS не делаем
    """
    value = cr3
    *idxs, offset = parse_laddr(laddr)
    for idx in idxs:
        index =  idx * 8                            # индекс * 8 (смещение от начала таблицы * 8 "байт" (размер записи))
        value = mem_struct.get(value + index, 0)
        if value & 1 == 0:                          # младший бит - бит присутствия P
            print('fault', file=fout)
            return
        value = value & (0xffffffffff << 12)        # маска = 40 единичек + 12 нулей => обнуляется 12 младших бит(по минимальному offset 2**12) в 52 битном адресе
    print(value + offset, file=fout)

def main(data, out):
    mem_struct = {}

    with open(data, 'r') as fin, open(out, 'w') as fout:
        mem_rows, queries, cr3 = map(int, fin.readline().split())
        for _ in range(mem_rows):
            paddr, value = map(int, fin.readline().split())
            mem_struct[paddr] = value
        for _ in range(queries):
            laddr = int(fin.readline())
            get_paddr(laddr, mem_struct, cr3, fout=fout)
    return 0

main(data = "dataset_44327_15.txt", out = "res1.txt")